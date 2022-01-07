
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_uio_dev {int * l2_ring; int l2_ring_map; int l2_ring_size; TYPE_1__* pdev; int * l2_buf; int l2_buf_map; int l2_buf_size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void __cnic_free_uio_rings(struct cnic_uio_dev *udev)
{
 if (udev->l2_buf) {
  dma_free_coherent(&udev->pdev->dev, udev->l2_buf_size,
      udev->l2_buf, udev->l2_buf_map);
  udev->l2_buf = ((void*)0);
 }

 if (udev->l2_ring) {
  dma_free_coherent(&udev->pdev->dev, udev->l2_ring_size,
      udev->l2_ring, udev->l2_ring_map);
  udev->l2_ring = ((void*)0);
 }

}
