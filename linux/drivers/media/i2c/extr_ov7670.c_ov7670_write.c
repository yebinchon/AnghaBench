
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {scalar_t__ use_smbus; } ;


 int ov7670_write_i2c (struct v4l2_subdev*,unsigned char,unsigned char) ;
 int ov7670_write_smbus (struct v4l2_subdev*,unsigned char,unsigned char) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_write(struct v4l2_subdev *sd, unsigned char reg,
  unsigned char value)
{
 struct ov7670_info *info = to_state(sd);
 if (info->use_smbus)
  return ov7670_write_smbus(sd, reg, value);
 else
  return ov7670_write_i2c(sd, reg, value);
}
