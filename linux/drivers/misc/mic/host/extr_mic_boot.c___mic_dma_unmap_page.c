
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 struct scif_hw_dev* dev_get_drvdata (struct device*) ;
 int mic_unmap_single (struct mic_device*,int ,size_t) ;
 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;

__attribute__((used)) static void
__mic_dma_unmap_page(struct device *dev, dma_addr_t dma_addr,
       size_t size, enum dma_data_direction dir,
       unsigned long attrs)
{
 struct scif_hw_dev *scdev = dev_get_drvdata(dev);
 struct mic_device *mdev = scdev_to_mdev(scdev);

 mic_unmap_single(mdev, dma_addr, size);
}
