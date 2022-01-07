
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {int lock; int sg_len; int sg_ptr; TYPE_1__* pdev; TYPE_2__* data; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_READ ;
 int SDHI_INTERNAL_DMAC_RX_IN_USE ;
 int clear_bit (int ,int *) ;
 int dma_unmap_sg (int *,int ,int ,int) ;
 int global_flags ;
 int renesas_sdhi_internal_dmac_enable_dma (struct tmio_mmc_host*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tmio_mmc_do_data_irq (struct tmio_mmc_host*) ;

__attribute__((used)) static void renesas_sdhi_internal_dmac_complete_tasklet_fn(unsigned long arg)
{
 struct tmio_mmc_host *host = (struct tmio_mmc_host *)arg;
 enum dma_data_direction dir;

 spin_lock_irq(&host->lock);

 if (!host->data)
  goto out;

 if (host->data->flags & MMC_DATA_READ)
  dir = DMA_FROM_DEVICE;
 else
  dir = DMA_TO_DEVICE;

 renesas_sdhi_internal_dmac_enable_dma(host, 0);
 dma_unmap_sg(&host->pdev->dev, host->sg_ptr, host->sg_len, dir);

 if (dir == DMA_FROM_DEVICE)
  clear_bit(SDHI_INTERNAL_DMAC_RX_IN_USE, &global_flags);

 tmio_mmc_do_data_irq(host);
out:
 spin_unlock_irq(&host->lock);
}
