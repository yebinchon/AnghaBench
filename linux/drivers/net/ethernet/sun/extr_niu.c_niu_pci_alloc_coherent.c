
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;

__attribute__((used)) static void *niu_pci_alloc_coherent(struct device *dev, size_t size,
        u64 *handle, gfp_t flag)
{
 dma_addr_t dh;
 void *ret;

 ret = dma_alloc_coherent(dev, size, &dh, flag);
 if (ret)
  *handle = dh;
 return ret;
}
