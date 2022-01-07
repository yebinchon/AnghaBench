
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;


 int ADV7183_STATUS_1 ;
 scalar_t__ V4L2_IN_ST_NO_SIGNAL ;
 int adv7183_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int adv7183_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 int reg;

 *status = V4L2_IN_ST_NO_SIGNAL;
 reg = adv7183_read(sd, ADV7183_STATUS_1);
 if (reg < 0)
  return reg;
 if (reg & 0x1)
  *status = 0;
 return 0;
}
