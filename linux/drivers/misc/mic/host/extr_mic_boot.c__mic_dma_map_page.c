
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int mic_map_single (struct mic_device*,void*,size_t) ;
 int page_to_phys (struct page*) ;
 void* phys_to_virt (int ) ;
 struct mic_device* vpdev_to_mdev (struct device*) ;

__attribute__((used)) static dma_addr_t
_mic_dma_map_page(struct device *dev, struct page *page,
    unsigned long offset, size_t size,
    enum dma_data_direction dir, unsigned long attrs)
{
 void *va = phys_to_virt(page_to_phys(page)) + offset;
 struct mic_device *mdev = vpdev_to_mdev(dev);

 return mic_map_single(mdev, va, size);
}
