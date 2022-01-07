
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fmc2_nfc {int dma_ecc_complete; int dma_data_complete; int dma_data_sg; int ecc_buf; int dev; int dma_ecc_sg; void* dma_ecc_ch; void* dma_rx_ch; void* dma_tx_ch; } ;


 int ENOMEM ;
 int FMC2_MAX_ECC_BUF_LEN ;
 int FMC2_MAX_SG ;
 int GFP_KERNEL ;
 int dev_warn (int ,char*) ;
 int devm_kzalloc (int ,int ,int ) ;
 void* dma_request_slave_channel (int ,char*) ;
 int init_completion (int *) ;
 int sg_alloc_table (int *,int ,int ) ;

__attribute__((used)) static int stm32_fmc2_dma_setup(struct stm32_fmc2_nfc *fmc2)
{
 int ret;

 fmc2->dma_tx_ch = dma_request_slave_channel(fmc2->dev, "tx");
 fmc2->dma_rx_ch = dma_request_slave_channel(fmc2->dev, "rx");
 fmc2->dma_ecc_ch = dma_request_slave_channel(fmc2->dev, "ecc");

 if (!fmc2->dma_tx_ch || !fmc2->dma_rx_ch || !fmc2->dma_ecc_ch) {
  dev_warn(fmc2->dev, "DMAs not defined in the device tree, polling mode is used\n");
  return 0;
 }

 ret = sg_alloc_table(&fmc2->dma_ecc_sg, FMC2_MAX_SG, GFP_KERNEL);
 if (ret)
  return ret;


 fmc2->ecc_buf = devm_kzalloc(fmc2->dev, FMC2_MAX_ECC_BUF_LEN,
         GFP_KERNEL);
 if (!fmc2->ecc_buf)
  return -ENOMEM;

 ret = sg_alloc_table(&fmc2->dma_data_sg, FMC2_MAX_SG, GFP_KERNEL);
 if (ret)
  return ret;

 init_completion(&fmc2->dma_data_complete);
 init_completion(&fmc2->dma_ecc_complete);

 return 0;
}
