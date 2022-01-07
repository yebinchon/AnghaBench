
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int I2C_SIZE (scalar_t__) ;
 int m5mols_read (struct v4l2_subdev*,int,scalar_t__,scalar_t__*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

int m5mols_read_u8(struct v4l2_subdev *sd, u32 reg, u8 *val)
{
 u32 val_32;
 int ret;

 if (I2C_SIZE(reg) != 1) {
  v4l2_err(sd, "Wrong data size\n");
  return -EINVAL;
 }

 ret = m5mols_read(sd, I2C_SIZE(reg), reg, &val_32);
 if (ret)
  return ret;

 *val = (u8)val_32;
 return ret;
}
