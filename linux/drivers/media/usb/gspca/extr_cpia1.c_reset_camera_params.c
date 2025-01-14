
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ cradled; scalar_t__ button; scalar_t__ bottomlight; scalar_t__ toplight; scalar_t__ qx3_detected; } ;
struct TYPE_16__ {int targetFR; int targetQ; int frTargeting; } ;
struct TYPE_15__ {int decimation; int mode; } ;
struct TYPE_14__ {int yuvOrder; int subSample; } ;
struct TYPE_26__ {int yThreshold; int uvThreshold; } ;
struct TYPE_25__ {int brightness; int saturation; int contrast; } ;
struct TYPE_24__ {int disabled; int allowableOverExposure; int coarseJump; scalar_t__ flickerMode; } ;
struct TYPE_23__ {int divisor; int baserate; } ;
struct TYPE_22__ {int hysteresis; int threshMax; int smallStep; int largeStep; int decimationHysteresis; int frDiffStepThresh; int qDiffStepThresh; int decimationThreshMod; } ;
struct TYPE_21__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_20__ {int gain1; int gain2; int gain4; int gain8; } ;
struct TYPE_19__ {int balanceMode; int redGain; int greenGain; int blueGain; } ;
struct TYPE_18__ {int gainMode; int expMode; int compMode; int centreWeight; int coarseExpLo; int blueComp; int green2Comp; int green1Comp; int redComp; scalar_t__ coarseExpHi; scalar_t__ fineExp; scalar_t__ gain; } ;
struct cam_params {TYPE_13__ qx3; TYPE_12__ compressionTarget; TYPE_11__ compression; TYPE_10__ format; TYPE_9__ yuvThreshold; TYPE_8__ colourParams; TYPE_7__ flickerControl; TYPE_6__ sensorFps; TYPE_5__ compressionParams; TYPE_4__ vlOffset; TYPE_3__ apcor; TYPE_2__ colourBalance; TYPE_1__ exposure; } ;
struct sd {size_t mainsFreq; struct cam_params params; } ;
struct gspca_dev {int dummy; } ;


 int BRIGHTNESS_DEF ;
 int COMP_BLUE ;
 int COMP_GREEN1 ;
 int COMP_GREEN2 ;
 int COMP_RED ;
 int COMP_TARGET_DEF ;
 int CONTRAST_DEF ;
 int CPIA_COMPRESSION_AUTO ;
 int NO_DECIMATION ;
 int SATURATION_DEF ;
 int SUBSAMPLE_420 ;
 int YUVORDER_YUYV ;
 int find_over_exposure (int ) ;
 int *** flicker_jumps ;

__attribute__((used)) static void reset_camera_params(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam_params *params = &sd->params;




 params->colourParams.brightness = BRIGHTNESS_DEF;
 params->colourParams.contrast = CONTRAST_DEF;
 params->colourParams.saturation = SATURATION_DEF;
 params->exposure.gainMode = 4;
 params->exposure.expMode = 2;
 params->exposure.compMode = 1;
 params->exposure.centreWeight = 1;
 params->exposure.gain = 0;
 params->exposure.fineExp = 0;
 params->exposure.coarseExpLo = 185;
 params->exposure.coarseExpHi = 0;
 params->exposure.redComp = COMP_RED;
 params->exposure.green1Comp = COMP_GREEN1;
 params->exposure.green2Comp = COMP_GREEN2;
 params->exposure.blueComp = COMP_BLUE;
 params->colourBalance.balanceMode = 2;
 params->colourBalance.redGain = 32;
 params->colourBalance.greenGain = 6;
 params->colourBalance.blueGain = 92;
 params->apcor.gain1 = 0x18;
 params->apcor.gain2 = 0x16;
 params->apcor.gain4 = 0x24;
 params->apcor.gain8 = 0x34;
 params->vlOffset.gain1 = 20;
 params->vlOffset.gain2 = 24;
 params->vlOffset.gain4 = 26;
 params->vlOffset.gain8 = 26;
 params->compressionParams.hysteresis = 3;
 params->compressionParams.threshMax = 11;
 params->compressionParams.smallStep = 1;
 params->compressionParams.largeStep = 3;
 params->compressionParams.decimationHysteresis = 2;
 params->compressionParams.frDiffStepThresh = 5;
 params->compressionParams.qDiffStepThresh = 3;
 params->compressionParams.decimationThreshMod = 2;




 params->sensorFps.divisor = 1;
 params->sensorFps.baserate = 1;

 params->flickerControl.flickerMode = 0;
 params->flickerControl.disabled = 1;
 params->flickerControl.coarseJump =
  flicker_jumps[sd->mainsFreq]
        [params->sensorFps.baserate]
        [params->sensorFps.divisor];
 params->flickerControl.allowableOverExposure =
  find_over_exposure(params->colourParams.brightness);

 params->yuvThreshold.yThreshold = 6;
 params->yuvThreshold.uvThreshold = 6;

 params->format.subSample = SUBSAMPLE_420;
 params->format.yuvOrder = YUVORDER_YUYV;

 params->compression.mode = CPIA_COMPRESSION_AUTO;
 params->compression.decimation = NO_DECIMATION;

 params->compressionTarget.frTargeting = COMP_TARGET_DEF;
 params->compressionTarget.targetFR = 15;
 params->compressionTarget.targetQ = 5;

 params->qx3.qx3_detected = 0;
 params->qx3.toplight = 0;
 params->qx3.bottomlight = 0;
 params->qx3.button = 0;
 params->qx3.cradled = 0;
}
