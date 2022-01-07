
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int sdcard_irq_mask; } ;


 int CTL_IRQ_MASK ;
 int TMIO_MASK_IRQ ;
 int sd_ctrl_write32_as_16_and_16 (struct tmio_mmc_host*,int ,int) ;

void tmio_mmc_enable_mmc_irqs(struct tmio_mmc_host *host, u32 i)
{
 host->sdcard_irq_mask &= ~(i & TMIO_MASK_IRQ);
 sd_ctrl_write32_as_16_and_16(host, CTL_IRQ_MASK, host->sdcard_irq_mask);
}
