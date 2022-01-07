
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct si4713_rnl {int rnl; int frequency; } ;
struct si4713_device {int tune_rnl; int power_state; } ;


 long EINVAL ;
 int ENOIOCTLCMD ;

 int si4713_tx_tune_measure (struct si4713_device*,int ,int ) ;
 int si4713_update_tune_status (struct si4713_device*) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;
 int v4l2_to_si4713 (int ) ;

__attribute__((used)) static long si4713_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct si4713_device *sdev = to_si4713_device(sd);
 struct si4713_rnl *rnl = arg;
 u16 frequency;
 int rval = 0;

 if (!arg)
  return -EINVAL;

 switch (cmd) {
 case 128:
  frequency = v4l2_to_si4713(rnl->frequency);

  if (sdev->power_state) {

   rval = si4713_tx_tune_measure(sdev, frequency, 0);
   if (rval < 0)
    return rval;

   rval = si4713_update_tune_status(sdev);
   if (rval < 0)
    return rval;
  }
  rnl->rnl = sdev->tune_rnl;
  break;

 default:

  rval = -ENOIOCTLCMD;
 }

 return rval;
}
