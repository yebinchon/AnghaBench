
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si4713_device {int stereo; int tune_rnl; int frequency; } ;


 int DEFAULT_FREQUENCY ;
 int DEFAULT_TUNE_RNL ;
 int POWER_OFF ;
 int POWER_ON ;
 int si4713_checkrev (struct si4713_device*) ;
 int si4713_set_power_state (struct si4713_device*,int ) ;

__attribute__((used)) static int si4713_initialize(struct si4713_device *sdev)
{
 int rval;

 rval = si4713_set_power_state(sdev, POWER_ON);
 if (rval < 0)
  return rval;

 rval = si4713_checkrev(sdev);
 if (rval < 0)
  return rval;

 rval = si4713_set_power_state(sdev, POWER_OFF);
 if (rval < 0)
  return rval;

 sdev->frequency = DEFAULT_FREQUENCY;
 sdev->stereo = 1;
 sdev->tune_rnl = DEFAULT_TUNE_RNL;
 return 0;
}
