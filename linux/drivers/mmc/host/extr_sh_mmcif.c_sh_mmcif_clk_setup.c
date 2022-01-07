
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mmcif_host {int clkdiv_map; TYPE_1__* mmc; int clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int f_max; unsigned int f_min; } ;


 unsigned int clk_get_rate (int ) ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int) ;
 int ffs (int) ;
 int fls (int) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static void sh_mmcif_clk_setup(struct sh_mmcif_host *host)
{
 struct device *dev = sh_mmcif_host_to_dev(host);

 if (host->mmc->f_max) {
  unsigned int f_max, f_min = 0, f_min_old;

  f_max = host->mmc->f_max;
  for (f_min_old = f_max; f_min_old > 2;) {
   f_min = clk_round_rate(host->clk, f_min_old / 2);
   if (f_min == f_min_old)
    break;
   f_min_old = f_min;
  }




  host->clkdiv_map = 0x3ff;

  host->mmc->f_max = f_max / (1 << ffs(host->clkdiv_map));
  host->mmc->f_min = f_min / (1 << fls(host->clkdiv_map));
 } else {
  unsigned int clk = clk_get_rate(host->clk);

  host->mmc->f_max = clk / 2;
  host->mmc->f_min = clk / 512;
 }

 dev_dbg(dev, "clk max/min = %d/%d\n",
  host->mmc->f_max, host->mmc->f_min);
}
