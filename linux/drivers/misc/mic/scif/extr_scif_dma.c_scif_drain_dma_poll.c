
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int SCIF_DMA_SYNC_WAIT ;
 int scif_sync_dma (struct scif_hw_dev*,struct dma_chan*,int ) ;

__attribute__((used)) static int scif_drain_dma_poll(struct scif_hw_dev *sdev, struct dma_chan *chan)
{
 if (!chan)
  return -EINVAL;
 return scif_sync_dma(sdev, chan, SCIF_DMA_SYNC_WAIT);
}
