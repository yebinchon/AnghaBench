
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct wm8350 {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int,unsigned int*) ;

u16 wm8350_reg_read(struct wm8350 *wm8350, int reg)
{
 unsigned int data;
 int err;

 err = regmap_read(wm8350->regmap, reg, &data);
 if (err)
  dev_err(wm8350->dev, "read from reg R%d failed\n", reg);

 return data;
}
