
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int regmap; } ;
struct i2c_reg_value {int reg; int value; } ;


 int regmap_write (int ,int,int ) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_write_inittab(struct v4l2_subdev *sd,
    const struct i2c_reg_value *regs)
{
 struct tvp5150 *decoder = to_tvp5150(sd);

 while (regs->reg != 0xff) {
  regmap_write(decoder->regmap, regs->reg, regs->value);
  regs++;
 }
 return 0;
}
