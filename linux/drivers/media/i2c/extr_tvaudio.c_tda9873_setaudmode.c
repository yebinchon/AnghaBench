
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; struct v4l2_subdev sd; } ;


 int TDA9873_INP_MASK ;
 int TDA9873_INTERNAL ;
 int TDA9873_SW ;
 int TDA9873_TR_DUALA ;
 int TDA9873_TR_DUALAB ;
 int TDA9873_TR_DUALB ;
 int TDA9873_TR_MASK ;
 int TDA9873_TR_MONO ;
 int TDA9873_TR_STEREO ;





 int chip_write (struct CHIPSTATE*,int,int) ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static void tda9873_setaudmode(struct CHIPSTATE *chip, int mode)
{
 struct v4l2_subdev *sd = &chip->sd;
 int sw_data = chip->shadow.bytes[TDA9873_SW+1] & ~ TDA9873_TR_MASK;


 if ((sw_data & TDA9873_INP_MASK) != TDA9873_INTERNAL) {
  v4l2_dbg(1, debug, sd,
    "tda9873_setaudmode(): external input\n");
  return;
 }

 v4l2_dbg(1, debug, sd,
   "tda9873_setaudmode(): chip->shadow.bytes[%d] = %d\n",
   TDA9873_SW+1, chip->shadow.bytes[TDA9873_SW+1]);
 v4l2_dbg(1, debug, sd, "tda9873_setaudmode(): sw_data  = %d\n",
   sw_data);

 switch (mode) {
 case 129:
  sw_data |= TDA9873_TR_MONO;
  break;
 case 128:
  sw_data |= TDA9873_TR_STEREO;
  break;
 case 132:
  sw_data |= TDA9873_TR_DUALA;
  break;
 case 130:
  sw_data |= TDA9873_TR_DUALB;
  break;
 case 131:
  sw_data |= TDA9873_TR_DUALAB;
  break;
 default:
  return;
 }

 chip_write(chip, TDA9873_SW, sw_data);
 v4l2_dbg(1, debug, sd,
  "tda9873_setaudmode(): req. mode %d; chip_write: %d\n",
  mode, sw_data);
}
