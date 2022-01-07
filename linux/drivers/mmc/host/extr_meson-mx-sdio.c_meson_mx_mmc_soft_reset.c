
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_mx_mmc_host {scalar_t__ base; } ;


 scalar_t__ MESON_MX_SDIO_IRQC ;
 int MESON_MX_SDIO_IRQC_SOFT_RESET ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mx_mmc_soft_reset(struct meson_mx_mmc_host *host)
{
 writel(MESON_MX_SDIO_IRQC_SOFT_RESET, host->base + MESON_MX_SDIO_IRQC);
 udelay(2);
}
