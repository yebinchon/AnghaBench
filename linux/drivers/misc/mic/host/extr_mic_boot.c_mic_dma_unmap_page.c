
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dummy; } ;
struct device {int parent; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 struct mic_device* dev_get_drvdata (int ) ;
 int mic_unmap_single (struct mic_device*,int ,size_t) ;

__attribute__((used)) static void
mic_dma_unmap_page(struct device *dev, dma_addr_t dma_addr,
     size_t size, enum dma_data_direction dir,
     unsigned long attrs)
{
 struct mic_device *mdev = dev_get_drvdata(dev->parent);
 mic_unmap_single(mdev, dma_addr, size);
}
