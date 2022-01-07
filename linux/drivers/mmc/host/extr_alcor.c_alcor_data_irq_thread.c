
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alcor_sdmmc_host {int sg_count; scalar_t__ dma_on; int blocks; int dev; int data; } ;


 int AU6601_INT_DATA_END ;
 int AU6601_INT_DATA_MASK ;
 int AU6601_RESET_DATA ;
 scalar_t__ alcor_data_irq_done (struct alcor_sdmmc_host*,int) ;
 int alcor_finish_data (struct alcor_sdmmc_host*) ;
 int alcor_reset (struct alcor_sdmmc_host*,int ) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static void alcor_data_irq_thread(struct alcor_sdmmc_host *host, u32 intmask)
{
 intmask &= AU6601_INT_DATA_MASK;

 if (!intmask)
  return;

 if (!host->data) {
  dev_dbg(host->dev, "Got data interrupt 0x%08x even though no data operation was in progress.\n",
   intmask);
  alcor_reset(host, AU6601_RESET_DATA);
  return;
 }

 if (alcor_data_irq_done(host, intmask))
  return;

 if ((intmask & AU6601_INT_DATA_END) || !host->blocks ||
     (host->dma_on && !host->sg_count))
  alcor_finish_data(host);
}
