
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_bulk_read (int ,int,int *,int) ;

int wm8350_block_read(struct wm8350 *wm8350, int start_reg, int regs,
        u16 *dest)
{
 int err = 0;

 err = regmap_bulk_read(wm8350->regmap, start_reg, dest, regs);
 if (err)
  dev_err(wm8350->dev, "block read starting from R%d failed\n",
   start_reg);

 return err;
}
