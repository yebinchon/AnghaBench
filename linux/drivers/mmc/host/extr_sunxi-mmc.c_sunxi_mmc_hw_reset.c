
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int REG_HWRST ;
 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void sunxi_mmc_hw_reset(struct mmc_host *mmc)
{
 struct sunxi_mmc_host *host = mmc_priv(mmc);
 mmc_writel(host, REG_HWRST, 0);
 udelay(10);
 mmc_writel(host, REG_HWRST, 1);
 udelay(300);
}
