
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int REG_STAS ;
 int SDXC_CARD_DATA_BUSY ;
 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_readl (struct sunxi_mmc_host*,int ) ;

__attribute__((used)) static int sunxi_mmc_card_busy(struct mmc_host *mmc)
{
 struct sunxi_mmc_host *host = mmc_priv(mmc);

 return !!(mmc_readl(host, REG_STAS) & SDXC_CARD_DATA_BUSY);
}
