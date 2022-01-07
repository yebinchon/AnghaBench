
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cnic_uio_dev {int l2_ring_size; int l2_buf_size; void* l2_buf; int l2_buf_map; TYPE_2__* pdev; void* l2_ring; int l2_ring_map; TYPE_1__* dev; } ;
struct cnic_local {int l2_rx_ring_size; int l2_single_buf_size; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct cnic_local* cnic_priv; } ;


 int CNIC_PAGE_ALIGN (int) ;
 int CNIC_PAGE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_COMP ;
 int __cnic_free_uio_rings (struct cnic_uio_dev*) ;
 void* dma_alloc_coherent (int *,int,int *,int) ;

__attribute__((used)) static int __cnic_alloc_uio_rings(struct cnic_uio_dev *udev, int pages)
{
 struct cnic_local *cp = udev->dev->cnic_priv;

 if (udev->l2_ring)
  return 0;

 udev->l2_ring_size = pages * CNIC_PAGE_SIZE;
 udev->l2_ring = dma_alloc_coherent(&udev->pdev->dev, udev->l2_ring_size,
        &udev->l2_ring_map,
        GFP_KERNEL | __GFP_COMP);
 if (!udev->l2_ring)
  return -ENOMEM;

 udev->l2_buf_size = (cp->l2_rx_ring_size + 1) * cp->l2_single_buf_size;
 udev->l2_buf_size = CNIC_PAGE_ALIGN(udev->l2_buf_size);
 udev->l2_buf = dma_alloc_coherent(&udev->pdev->dev, udev->l2_buf_size,
       &udev->l2_buf_map,
       GFP_KERNEL | __GFP_COMP);
 if (!udev->l2_buf) {
  __cnic_free_uio_rings(udev);
  return -ENOMEM;
 }

 return 0;

}
