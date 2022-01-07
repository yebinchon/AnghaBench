
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct jz4740_mmc_host {int dummy; } ;


 int JZ_MMC_IRQ_SDIO ;
 int jz4740_mmc_set_irq_enabled (struct jz4740_mmc_host*,int ,int) ;
 struct jz4740_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void jz4740_mmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct jz4740_mmc_host *host = mmc_priv(mmc);
 jz4740_mmc_set_irq_enabled(host, JZ_MMC_IRQ_SDIO, enable);
}
