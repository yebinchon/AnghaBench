
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 struct scif_hw_dev* dev_get_drvdata (struct device*) ;
 int kfree (void*) ;
 int mic_unmap_single (struct mic_device*,int ,size_t) ;
 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;

__attribute__((used)) static void __mic_dma_free(struct device *dev, size_t size, void *vaddr,
      dma_addr_t dma_handle, unsigned long attrs)
{
 struct scif_hw_dev *scdev = dev_get_drvdata(dev);
 struct mic_device *mdev = scdev_to_mdev(scdev);

 mic_unmap_single(mdev, dma_handle, size);
 kfree(vaddr);
}
