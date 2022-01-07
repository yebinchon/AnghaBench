
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_single (struct device*,int ,size_t,int) ;

__attribute__((used)) static void niu_pci_unmap_single(struct device *dev, u64 dma_address,
     size_t size,
     enum dma_data_direction direction)
{
 dma_unmap_single(dev, dma_address, size, direction);
}
