
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct meson_mx_mmc_host {scalar_t__ base; } ;


 scalar_t__ MESON_MX_SDIO_IRQC ;
 int MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK ;
 struct meson_mx_mmc_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int meson_mx_mmc_card_busy(struct mmc_host *mmc)
{
 struct meson_mx_mmc_host *host = mmc_priv(mmc);
 u32 irqc = readl(host->base + MESON_MX_SDIO_IRQC);

 return !!(irqc & MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK);
}
