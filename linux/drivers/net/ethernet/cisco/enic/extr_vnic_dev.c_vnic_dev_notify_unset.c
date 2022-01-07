
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {int notify_pa; scalar_t__ notify; int pdev; } ;


 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int vnic_dev_notify_unsetcmd (struct vnic_dev*) ;

int vnic_dev_notify_unset(struct vnic_dev *vdev)
{
 if (vdev->notify) {
  pci_free_consistent(vdev->pdev,
   sizeof(struct vnic_devcmd_notify),
   vdev->notify,
   vdev->notify_pa);
 }

 return vnic_dev_notify_unsetcmd(vdev);
}
