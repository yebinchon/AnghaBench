
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;



 long ENOTTY ;
 long adv7842_command_ram_test (struct v4l2_subdev*) ;

__attribute__((used)) static long adv7842_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 switch (cmd) {
 case 128:
  return adv7842_command_ram_test(sd);
 }
 return -ENOTTY;
}
