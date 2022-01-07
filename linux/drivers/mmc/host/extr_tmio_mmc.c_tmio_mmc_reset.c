
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int sdio_irq_mask; TYPE_1__* pdata; } ;
struct TYPE_2__ {int flags; } ;


 int CTL_RESET_SD ;
 int CTL_RESET_SDIO ;
 int CTL_SDIO_IRQ_MASK ;
 int CTL_TRANSACTION_CTL ;
 int TMIO_MMC_SDIO_IRQ ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tmio_mmc_reset(struct tmio_mmc_host *host)
{

 sd_ctrl_write16(host, CTL_RESET_SD, 0x0000);
 sd_ctrl_write16(host, CTL_RESET_SDIO, 0x0000);
 usleep_range(10000, 11000);
 sd_ctrl_write16(host, CTL_RESET_SD, 0x0001);
 sd_ctrl_write16(host, CTL_RESET_SDIO, 0x0001);
 usleep_range(10000, 11000);

 if (host->pdata->flags & TMIO_MMC_SDIO_IRQ) {
  sd_ctrl_write16(host, CTL_SDIO_IRQ_MASK, host->sdio_irq_mask);
  sd_ctrl_write16(host, CTL_TRANSACTION_CTL, 0x0001);
 }
}
