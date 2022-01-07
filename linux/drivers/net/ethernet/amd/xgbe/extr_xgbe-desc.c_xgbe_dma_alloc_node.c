
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int dev_to_node (struct device*) ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int set_dev_node (struct device*,int) ;

__attribute__((used)) static void *xgbe_dma_alloc_node(struct device *dev, size_t size,
     dma_addr_t *dma, int node)
{
 void *mem;
 int cur_node = dev_to_node(dev);

 set_dev_node(dev, node);
 mem = dma_alloc_coherent(dev, size, dma, GFP_KERNEL);
 set_dev_node(dev, cur_node);

 if (!mem)
  mem = dma_alloc_coherent(dev, size, dma, GFP_KERNEL);

 return mem;
}
