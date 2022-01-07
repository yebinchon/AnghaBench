
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_stats {int dummy; } ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_devcmd_fw_info {int dummy; } ;
struct vnic_dev {scalar_t__ devcmd2; int fw_info_pa; scalar_t__ fw_info; int pdev; int stats_pa; scalar_t__ stats; int notify_pa; scalar_t__ notify; } ;


 int kfree (struct vnic_dev*) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int vnic_dev_deinit_devcmd2 (struct vnic_dev*) ;

void vnic_dev_unregister(struct vnic_dev *vdev)
{
 if (vdev) {
  if (vdev->notify)
   pci_free_consistent(vdev->pdev,
    sizeof(struct vnic_devcmd_notify),
    vdev->notify,
    vdev->notify_pa);
  if (vdev->stats)
   pci_free_consistent(vdev->pdev,
    sizeof(struct vnic_stats),
    vdev->stats, vdev->stats_pa);
  if (vdev->fw_info)
   pci_free_consistent(vdev->pdev,
    sizeof(struct vnic_devcmd_fw_info),
    vdev->fw_info, vdev->fw_info_pa);
  if (vdev->devcmd2)
   vnic_dev_deinit_devcmd2(vdev);

  kfree(vdev);
 }
}
