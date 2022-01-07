
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;



struct pci_dev *vnic_dev_get_pdev(struct vnic_dev *vdev)
{
 return vdev->pdev;
}
