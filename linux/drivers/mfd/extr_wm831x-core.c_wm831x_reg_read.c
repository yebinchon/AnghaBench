
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int regmap; } ;


 int regmap_read (int ,unsigned short,unsigned int*) ;

int wm831x_reg_read(struct wm831x *wm831x, unsigned short reg)
{
 unsigned int val;
 int ret;

 ret = regmap_read(wm831x->regmap, reg, &val);

 if (ret < 0)
  return ret;
 else
  return val;
}
