
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_bulk_write (int ,int,int *,int) ;

int wm8350_block_write(struct wm8350 *wm8350, int start_reg, int regs,
         u16 *src)
{
 int ret = 0;

 ret = regmap_bulk_write(wm8350->regmap, start_reg, src, regs);
 if (ret)
  dev_err(wm8350->dev, "block write starting at R%d failed\n",
   start_reg);

 return ret;
}
