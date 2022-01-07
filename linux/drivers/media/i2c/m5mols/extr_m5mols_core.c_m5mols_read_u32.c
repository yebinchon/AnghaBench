
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int I2C_SIZE (int ) ;
 int m5mols_read (struct v4l2_subdev*,int,int ,int *) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

int m5mols_read_u32(struct v4l2_subdev *sd, u32 reg, u32 *val)
{
 if (I2C_SIZE(reg) != 4) {
  v4l2_err(sd, "Wrong data size\n");
  return -EINVAL;
 }

 return m5mols_read(sd, I2C_SIZE(reg), reg, val);
}
