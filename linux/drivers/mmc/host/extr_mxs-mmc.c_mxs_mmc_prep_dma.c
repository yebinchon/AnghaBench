
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mxs_ssp {int dma_dir; int slave_dirn; int dmach; scalar_t__ ssp_pio_words; } ;
struct mxs_mmc_host {int mmc; struct mmc_data* data; struct mxs_ssp ssp; } ;
struct mmc_data {unsigned int sg_len; struct scatterlist* sg; } ;
struct dma_async_tx_descriptor {struct mxs_mmc_host* callback_param; int callback; } ;


 unsigned int SSP_PIO_NUM ;
 int dma_map_sg (int ,struct scatterlist*,unsigned int,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,unsigned int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,struct scatterlist*,unsigned int,int ,unsigned long) ;
 int mmc_dev (int ) ;
 int mxs_mmc_dma_irq_callback ;

__attribute__((used)) static struct dma_async_tx_descriptor *mxs_mmc_prep_dma(
 struct mxs_mmc_host *host, unsigned long flags)
{
 struct mxs_ssp *ssp = &host->ssp;
 struct dma_async_tx_descriptor *desc;
 struct mmc_data *data = host->data;
 struct scatterlist * sgl;
 unsigned int sg_len;

 if (data) {

  dma_map_sg(mmc_dev(host->mmc), data->sg,
      data->sg_len, ssp->dma_dir);
  sgl = data->sg;
  sg_len = data->sg_len;
 } else {

  sgl = (struct scatterlist *) ssp->ssp_pio_words;
  sg_len = SSP_PIO_NUM;
 }

 desc = dmaengine_prep_slave_sg(ssp->dmach,
    sgl, sg_len, ssp->slave_dirn, flags);
 if (desc) {
  desc->callback = mxs_mmc_dma_irq_callback;
  desc->callback_param = host;
 } else {
  if (data)
   dma_unmap_sg(mmc_dev(host->mmc), data->sg,
         data->sg_len, ssp->dma_dir);
 }

 return desc;
}
