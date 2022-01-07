
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int scif_async_dma (struct scif_hw_dev*,struct dma_chan*) ;

int scif_drain_dma_intr(struct scif_hw_dev *sdev, struct dma_chan *chan)
{
 if (!chan)
  return -EINVAL;
 return scif_async_dma(sdev, chan);
}
