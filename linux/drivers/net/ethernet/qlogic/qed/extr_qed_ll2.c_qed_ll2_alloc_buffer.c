
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qed_dev {TYPE_2__* pdev; TYPE_1__* ll2; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int rx_size; } ;


 int DMA_FROM_DEVICE ;
 int DP_INFO (struct qed_dev*,char*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NET_SKB_PAD ;
 int dma_map_single (int *,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static int qed_ll2_alloc_buffer(struct qed_dev *cdev,
    u8 **data, dma_addr_t *phys_addr)
{
 *data = kmalloc(cdev->ll2->rx_size, GFP_ATOMIC);
 if (!(*data)) {
  DP_INFO(cdev, "Failed to allocate LL2 buffer data\n");
  return -ENOMEM;
 }

 *phys_addr = dma_map_single(&cdev->pdev->dev,
        ((*data) + NET_SKB_PAD),
        cdev->ll2->rx_size, DMA_FROM_DEVICE);
 if (dma_mapping_error(&cdev->pdev->dev, *phys_addr)) {
  DP_INFO(cdev, "Failed to map LL2 buffer data\n");
  kfree((*data));
  return -ENOMEM;
 }

 return 0;
}
