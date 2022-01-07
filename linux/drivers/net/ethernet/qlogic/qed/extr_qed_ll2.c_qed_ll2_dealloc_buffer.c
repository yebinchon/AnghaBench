
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_ll2_buffer {int list; int data; int phys_addr; } ;
struct qed_dev {TYPE_1__* ll2; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int lock; int rx_cnt; int rx_size; } ;


 int DMA_FROM_DEVICE ;
 int DP_INFO (struct qed_dev*,char*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qed_ll2_dealloc_buffer(struct qed_dev *cdev,
     struct qed_ll2_buffer *buffer)
{
 spin_lock_bh(&cdev->ll2->lock);

 dma_unmap_single(&cdev->pdev->dev, buffer->phys_addr,
    cdev->ll2->rx_size, DMA_FROM_DEVICE);
 kfree(buffer->data);
 list_del(&buffer->list);

 cdev->ll2->rx_cnt--;
 if (!cdev->ll2->rx_cnt)
  DP_INFO(cdev, "All LL2 entries were removed\n");

 spin_unlock_bh(&cdev->ll2->lock);

 return 0;
}
