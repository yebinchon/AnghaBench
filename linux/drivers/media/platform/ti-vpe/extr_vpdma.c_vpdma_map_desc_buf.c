
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_data {TYPE_1__* pdev; } ;
struct vpdma_buf {int mapped; int dma_addr; int size; int addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;

int vpdma_map_desc_buf(struct vpdma_data *vpdma, struct vpdma_buf *buf)
{
 struct device *dev = &vpdma->pdev->dev;

 WARN_ON(buf->mapped);
 buf->dma_addr = dma_map_single(dev, buf->addr, buf->size,
    DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, buf->dma_addr)) {
  dev_err(dev, "failed to map buffer\n");
  return -EINVAL;
 }

 buf->mapped = 1;

 return 0;
}
