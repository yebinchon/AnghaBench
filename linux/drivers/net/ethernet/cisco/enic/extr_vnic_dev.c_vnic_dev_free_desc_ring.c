
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev_ring {int * descs; int base_addr_unaligned; int descs_unaligned; int size_unaligned; } ;
struct vnic_dev {int pdev; } ;


 int pci_free_consistent (int ,int ,int ,int ) ;

void vnic_dev_free_desc_ring(struct vnic_dev *vdev, struct vnic_dev_ring *ring)
{
 if (ring->descs) {
  pci_free_consistent(vdev->pdev,
   ring->size_unaligned,
   ring->descs_unaligned,
   ring->base_addr_unaligned);
  ring->descs = ((void*)0);
 }
}
