
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {int dma_on; int sg_len; TYPE_1__* pdev; struct scatterlist* sg_ptr; } ;
struct scatterlist {int dummy; } ;
struct mmc_data {int flags; } ;
struct TYPE_2__ {int dev; } ;


 int DM_CM_DTRAN_MODE ;
 int DM_DTRAN_ADDR ;
 int DTRAN_MODE_ADDR_MODE ;
 int DTRAN_MODE_BUS_WIDTH ;
 int DTRAN_MODE_CH_NUM_CH0 ;
 int DTRAN_MODE_CH_NUM_CH1 ;
 int IS_ALIGNED (int ,int) ;
 int MMC_DATA_READ ;
 int SDHI_INTERNAL_DMAC_ADDR_MODE_FIXED_ONLY ;
 int SDHI_INTERNAL_DMAC_ONE_RX_ONLY ;
 int SDHI_INTERNAL_DMAC_RX_IN_USE ;
 int dma_map_sg (int *,struct scatterlist*,int ,int ) ;
 int dma_unmap_sg (int *,struct scatterlist*,int ,int ) ;
 int global_flags ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int renesas_sdhi_internal_dmac_dm_write (struct tmio_mmc_host*,int ,int ) ;
 int renesas_sdhi_internal_dmac_enable_dma (struct tmio_mmc_host*,int) ;
 int sg_dma_address (struct scatterlist*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
renesas_sdhi_internal_dmac_start_dma(struct tmio_mmc_host *host,
         struct mmc_data *data)
{
 struct scatterlist *sg = host->sg_ptr;
 u32 dtran_mode = DTRAN_MODE_BUS_WIDTH;

 if (!test_bit(SDHI_INTERNAL_DMAC_ADDR_MODE_FIXED_ONLY, &global_flags))
  dtran_mode |= DTRAN_MODE_ADDR_MODE;

 if (!dma_map_sg(&host->pdev->dev, sg, host->sg_len,
   mmc_get_dma_dir(data)))
  goto force_pio;


 if (!IS_ALIGNED(sg_dma_address(sg), 8))
  goto force_pio_with_unmap;

 if (data->flags & MMC_DATA_READ) {
  dtran_mode |= DTRAN_MODE_CH_NUM_CH1;
  if (test_bit(SDHI_INTERNAL_DMAC_ONE_RX_ONLY, &global_flags) &&
      test_and_set_bit(SDHI_INTERNAL_DMAC_RX_IN_USE, &global_flags))
   goto force_pio_with_unmap;
 } else {
  dtran_mode |= DTRAN_MODE_CH_NUM_CH0;
 }

 renesas_sdhi_internal_dmac_enable_dma(host, 1);


 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_DTRAN_MODE,
         dtran_mode);
 renesas_sdhi_internal_dmac_dm_write(host, DM_DTRAN_ADDR,
         sg_dma_address(sg));

 host->dma_on = 1;

 return;

force_pio_with_unmap:
 dma_unmap_sg(&host->pdev->dev, sg, host->sg_len, mmc_get_dma_dir(data));

force_pio:
 renesas_sdhi_internal_dmac_enable_dma(host, 0);
}
