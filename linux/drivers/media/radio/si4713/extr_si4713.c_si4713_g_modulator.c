
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_modulator {scalar_t__ index; int capability; int txsubchans; void* rangehigh; void* rangelow; int name; } ;
struct si4713_device {scalar_t__ rds_enabled; scalar_t__ stereo; scalar_t__ power_state; } ;


 int EINVAL ;
 int ENODEV ;
 int FREQ_RANGE_HIGH ;
 int FREQ_RANGE_LOW ;
 int SI4713_TX_COMPONENT_ENABLE ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_RDS ;
 int V4L2_TUNER_CAP_RDS_CONTROLS ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_RDS ;
 int V4L2_TUNER_SUB_STEREO ;
 scalar_t__ get_status_bit (int ,int,int) ;
 int si4713_read_property (struct si4713_device*,int ,int *) ;
 void* si4713_to_v4l2 (int ) ;
 int strscpy (int ,char*,int) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_g_modulator(struct v4l2_subdev *sd, struct v4l2_modulator *vm)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;

 if (!sdev)
  return -ENODEV;

 if (vm->index > 0)
  return -EINVAL;

 strscpy(vm->name, "FM Modulator", sizeof(vm->name));
 vm->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LOW |
  V4L2_TUNER_CAP_RDS | V4L2_TUNER_CAP_RDS_CONTROLS;


 vm->rangelow = si4713_to_v4l2(FREQ_RANGE_LOW);
 vm->rangehigh = si4713_to_v4l2(FREQ_RANGE_HIGH);

 if (sdev->power_state) {
  u32 comp_en = 0;

  rval = si4713_read_property(sdev, SI4713_TX_COMPONENT_ENABLE,
      &comp_en);
  if (rval < 0)
   return rval;

  sdev->stereo = get_status_bit(comp_en, 1, 1 << 1);
 }


 if (sdev->stereo)
  vm->txsubchans = V4L2_TUNER_SUB_STEREO;
 else
  vm->txsubchans = V4L2_TUNER_SUB_MONO;


 if (sdev->rds_enabled)
  vm->txsubchans |= V4L2_TUNER_SUB_RDS;
 else
  vm->txsubchans &= ~V4L2_TUNER_SUB_RDS;

 return rval;
}
