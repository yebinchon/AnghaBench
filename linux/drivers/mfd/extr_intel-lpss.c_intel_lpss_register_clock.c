
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfd_cell {char* name; } ;
struct intel_lpss {int devid; scalar_t__ type; struct clk* clk; int clock; TYPE_1__* info; int dev; struct mfd_cell* cell; } ;
struct clk {int dummy; } ;
typedef int devname ;
struct TYPE_2__ {int clk_con_id; int clk_rate; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ LPSS_DEV_I2C ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_register_fixed_rate (int *,int ,int *,int ,int ) ;
 int clkdev_create (struct clk*,int ,char*,char*) ;
 int dev_name (int ) ;
 int intel_lpss_register_clock_divider (struct intel_lpss*,char*,struct clk**) ;
 int intel_lpss_unregister_clock_tree (struct clk*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int intel_lpss_register_clock(struct intel_lpss *lpss)
{
 const struct mfd_cell *cell = lpss->cell;
 struct clk *clk;
 char devname[24];
 int ret;

 if (!lpss->info->clk_rate)
  return 0;


 clk = clk_register_fixed_rate(((void*)0), dev_name(lpss->dev), ((void*)0), 0,
          lpss->info->clk_rate);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 snprintf(devname, sizeof(devname), "%s.%d", cell->name, lpss->devid);





 if (lpss->type != LPSS_DEV_I2C) {
  ret = intel_lpss_register_clock_divider(lpss, devname, &clk);
  if (ret)
   goto err_clk_register;
 }

 ret = -ENOMEM;


 lpss->clock = clkdev_create(clk, lpss->info->clk_con_id, "%s", devname);
 if (!lpss->clock)
  goto err_clk_register;

 lpss->clk = clk;

 return 0;

err_clk_register:
 intel_lpss_unregister_clock_tree(clk);

 return ret;
}
