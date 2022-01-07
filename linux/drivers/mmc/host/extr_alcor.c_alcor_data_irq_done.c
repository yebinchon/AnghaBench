
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alcor_sdmmc_host {scalar_t__ blocks; int dma_on; int dev; int sg_count; int data; } ;


 int AU6601_INT_DATA_END ;
 int AU6601_INT_DATA_MASK ;



 int alcor_data_set_dma (struct alcor_sdmmc_host*) ;
 int alcor_trf_block_pio (struct alcor_sdmmc_host*,int) ;
 int alcor_trigger_data_transfer (struct alcor_sdmmc_host*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int alcor_data_irq_done(struct alcor_sdmmc_host *host, u32 intmask)
{
 u32 tmp;

 intmask &= AU6601_INT_DATA_MASK;


 if (!intmask)
  return 1;




 if (!host->data && intmask == AU6601_INT_DATA_END)
  return 1;


 if (!host->data)
  return 0;

 tmp = intmask & (129 | 128
    | 130);
 switch (tmp) {
 case 0:
  break;
 case 129:
  alcor_trf_block_pio(host, 1);
  return 1;
 case 128:
  alcor_trf_block_pio(host, 0);
  return 1;
 case 130:
  if (!host->sg_count)
   break;

  alcor_data_set_dma(host);
  break;
 default:
  dev_err(host->dev, "Got READ_BUF_RDY and WRITE_BUF_RDY at same time\n");
  break;
 }

 if (intmask & AU6601_INT_DATA_END) {
  if (!host->dma_on && host->blocks) {
   alcor_trigger_data_transfer(host);
   return 1;
  } else {
   return 0;
  }
 }

 return 1;
}
