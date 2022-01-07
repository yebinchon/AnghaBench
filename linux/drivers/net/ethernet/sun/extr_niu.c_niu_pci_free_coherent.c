
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,size_t,void*,int ) ;

__attribute__((used)) static void niu_pci_free_coherent(struct device *dev, size_t size,
      void *cpu_addr, u64 handle)
{
 dma_free_coherent(dev, size, cpu_addr, handle);
}
