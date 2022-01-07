
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_reg_value {scalar_t__ reg; scalar_t__ type; int value; } ;


 scalar_t__ TVP7002_EOR ;
 scalar_t__ TVP7002_WRITE ;
 int tvp7002_write_err (struct v4l2_subdev*,scalar_t__,int ,int*) ;

__attribute__((used)) static int tvp7002_write_inittab(struct v4l2_subdev *sd,
     const struct i2c_reg_value *regs)
{
 int error = 0;


 while (TVP7002_EOR != regs->reg) {
  if (TVP7002_WRITE == regs->type)
   tvp7002_write_err(sd, regs->reg, regs->value, &error);
  regs++;
 }

 return error;
}
