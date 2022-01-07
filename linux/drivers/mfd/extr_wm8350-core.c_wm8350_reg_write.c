
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int,int ) ;

int wm8350_reg_write(struct wm8350 *wm8350, int reg, u16 val)
{
 int ret;

 ret = regmap_write(wm8350->regmap, reg, val);

 if (ret)
  dev_err(wm8350->dev, "write to reg R%d failed\n", reg);
 return ret;
}
