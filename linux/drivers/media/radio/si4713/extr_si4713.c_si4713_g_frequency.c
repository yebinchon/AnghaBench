
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct si4713_device {int frequency; scalar_t__ power_state; } ;


 int EINVAL ;
 int si4713_to_v4l2 (int ) ;
 int si4713_tx_tune_status (struct si4713_device*,int,int *,int *,int *,int *) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_g_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 int rval = 0;

 if (f->tuner)
  return -EINVAL;

 if (sdev->power_state) {
  u16 freq;
  u8 p, a, n;

  rval = si4713_tx_tune_status(sdev, 0x00, &freq, &p, &a, &n);
  if (rval < 0)
   return rval;

  sdev->frequency = freq;
 }

 f->frequency = si4713_to_v4l2(sdev->frequency);

 return rval;
}
