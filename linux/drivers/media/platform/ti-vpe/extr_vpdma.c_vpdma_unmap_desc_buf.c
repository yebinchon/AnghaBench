
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_data {TYPE_1__* pdev; } ;
struct vpdma_buf {int mapped; int size; int dma_addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

void vpdma_unmap_desc_buf(struct vpdma_data *vpdma, struct vpdma_buf *buf)
{
 struct device *dev = &vpdma->pdev->dev;

 if (buf->mapped)
  dma_unmap_single(dev, buf->dma_addr, buf->size,
    DMA_BIDIRECTIONAL);

 buf->mapped = 0;
}
