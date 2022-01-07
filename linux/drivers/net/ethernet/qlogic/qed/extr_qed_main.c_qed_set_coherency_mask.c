
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIT_MASK (int) ;
 int DP_NOTICE (struct qed_dev*,char*) ;
 int EIO ;
 scalar_t__ dma_set_coherent_mask (struct device*,int ) ;
 scalar_t__ dma_set_mask (struct device*,int ) ;

__attribute__((used)) static int qed_set_coherency_mask(struct qed_dev *cdev)
{
 struct device *dev = &cdev->pdev->dev;

 if (dma_set_mask(dev, DMA_BIT_MASK(64)) == 0) {
  if (dma_set_coherent_mask(dev, DMA_BIT_MASK(64)) != 0) {
   DP_NOTICE(cdev,
      "Can't request 64-bit consistent allocations\n");
   return -EIO;
  }
 } else if (dma_set_mask(dev, DMA_BIT_MASK(32)) != 0) {
  DP_NOTICE(cdev, "Can't request 64b/32b DMA addresses\n");
  return -EIO;
 }

 return 0;
}
