include($$PWD/../external/Eigen/Eigen.prf)              # Eigen library
include($$PWD/../external/nanoflann/nanoflann.prf)      # nanoflann library

TEMPLATE = lib
CONFIG += staticlib
QT += opengl xml

# Build flag
CONFIG(debug, debug|release) {CFG = debug} else {CFG = release}

# Library name and destination
TARGET = GeoTopoLib
DESTDIR = $$PWD/$$CFG/lib

SOURCES += \ 
    BatchProcess.cpp \
    DeformToFit.cpp \
    EnergyGuidedDeformation.cpp \
    EvaluateCorrespondence.cpp \
    PropagateProximity.cpp \
    PropagateSymmetry.cpp \
    StructureAnalysis.cpp

HEADERS += \ 
    AStarSearch.h \
    BatchProcess.h \
    DeformToFit.h \
    EnergyGuidedDeformation.h \
    EvaluateCorrespondence.h \
    PropagateProximity.h \
    PropagateSymmetry.h \
    ShapeGraph.h \
    StructureAnalysis.h

## External libraries:
# NURBS library
LIBS += -L$$PWD/../NURBS/$$CFG/lib -lNURBS
INCLUDEPATH += ../NURBS

# Surface mesh library
LIBS += -L$$PWD/../external/SurfaceMesh/$$CFG/lib -lSurfaceMesh
INCLUDEPATH += ../external/SurfaceMesh ../external/SurfaceMesh/surface_mesh

# Structure Graph Library
LIBS += -L$$PWD/../StructureGraphLib/$$CFG/lib -lStructureGraphLib
INCLUDEPATH += ../StructureGraphLib
