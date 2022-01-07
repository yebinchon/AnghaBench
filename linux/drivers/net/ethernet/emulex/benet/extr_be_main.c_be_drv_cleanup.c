
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct be_dma_mem {int dma; scalar_t__ va; int size; } ;
struct be_adapter {struct be_dma_mem stats_cmd; struct be_dma_mem rx_filter; TYPE_1__* pdev; struct be_dma_mem mbox_mem_alloced; } ;
struct TYPE_2__ {struct device dev; } ;


 int dma_free_coherent (struct device*,int ,scalar_t__,int ) ;

__attribute__((used)) static void be_drv_cleanup(struct be_adapter *adapter)
{
 struct be_dma_mem *mem = &adapter->mbox_mem_alloced;
 struct device *dev = &adapter->pdev->dev;

 if (mem->va)
  dma_free_coherent(dev, mem->size, mem->va, mem->dma);

 mem = &adapter->rx_filter;
 if (mem->va)
  dma_free_coherent(dev, mem->size, mem->va, mem->dma);

 mem = &adapter->stats_cmd;
 if (mem->va)
  dma_free_coherent(dev, mem->size, mem->va, mem->dma);
}
