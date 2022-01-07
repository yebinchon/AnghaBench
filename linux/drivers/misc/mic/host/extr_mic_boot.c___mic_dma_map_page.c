
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct page {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 struct scif_hw_dev* dev_get_drvdata (struct device*) ;
 int mic_map_single (struct mic_device*,void*,size_t) ;
 int page_to_phys (struct page*) ;
 void* phys_to_virt (int ) ;
 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;

__attribute__((used)) static dma_addr_t
__mic_dma_map_page(struct device *dev, struct page *page, unsigned long offset,
     size_t size, enum dma_data_direction dir,
     unsigned long attrs)
{
 void *va = phys_to_virt(page_to_phys(page)) + offset;
 struct scif_hw_dev *scdev = dev_get_drvdata(dev);
 struct mic_device *mdev = scdev_to_mdev(scdev);

 return mic_map_single(mdev, va, size);
}
