
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int TDA985x_SAPP ;
 int TDA985x_STP ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_SAP ;
 int V4L2_TUNER_SUB_STEREO ;
 int chip_read (struct CHIPSTATE*) ;

__attribute__((used)) static int tda985x_getrxsubchans(struct CHIPSTATE *chip)
{
 int mode, val;



 mode = V4L2_TUNER_SUB_MONO;
 val = chip_read(chip);
 if (val < 0)
  return mode;

 if (val & TDA985x_STP)
  mode = V4L2_TUNER_SUB_STEREO;
 if (val & TDA985x_SAPP)
  mode |= V4L2_TUNER_SUB_SAP;
 return mode;
}
