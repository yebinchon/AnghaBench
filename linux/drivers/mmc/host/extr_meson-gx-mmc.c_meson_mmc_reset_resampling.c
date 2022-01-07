
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_host {TYPE_1__* data; scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ adjust; } ;


 unsigned int ADJUST_ADJ_DELAY_MASK ;
 int meson_mmc_disable_resampling (struct meson_host*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void meson_mmc_reset_resampling(struct meson_host *host)
{
 unsigned int val;

 meson_mmc_disable_resampling(host);

 val = readl(host->regs + host->data->adjust);
 val &= ~ADJUST_ADJ_DELAY_MASK;
 writel(val, host->regs + host->data->adjust);
}
