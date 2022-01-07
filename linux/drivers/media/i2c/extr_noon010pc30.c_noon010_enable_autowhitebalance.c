
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int AWB_CTL_REG (int) ;
 int cam_i2c_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int noon010_enable_autowhitebalance(struct v4l2_subdev *sd, int on)
{
 int ret;

 ret = cam_i2c_write(sd, AWB_CTL_REG(1), on ? 0x2E : 0x2F);
 if (!ret)
  ret = cam_i2c_write(sd, AWB_CTL_REG(0), on ? 0xFB : 0x7B);
 return ret;
}
