
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_mmc_host {int mmc; } ;


 int EIO ;
 int REG_GCTRL ;
 int SDXC_HARDWARE_RESET ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mmc_dev (int ) ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int sunxi_mmc_reset_host(struct sunxi_mmc_host *host)
{
 unsigned long expire = jiffies + msecs_to_jiffies(250);
 u32 rval;

 mmc_writel(host, REG_GCTRL, SDXC_HARDWARE_RESET);
 do {
  rval = mmc_readl(host, REG_GCTRL);
 } while (time_before(jiffies, expire) && (rval & SDXC_HARDWARE_RESET));

 if (rval & SDXC_HARDWARE_RESET) {
  dev_err(mmc_dev(host->mmc), "fatal err reset timeout\n");
  return -EIO;
 }

 return 0;
}
