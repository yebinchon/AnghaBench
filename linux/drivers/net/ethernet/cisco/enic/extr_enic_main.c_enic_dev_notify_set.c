
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int devcmd_lock; int vdev; } ;




 int enic_legacy_notify_intr () ;
 int enic_msix_notify_intr (struct enic*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_notify_set (int ,int) ;

__attribute__((used)) static int enic_dev_notify_set(struct enic *enic)
{
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 129:
  err = vnic_dev_notify_set(enic->vdev,
   enic_legacy_notify_intr());
  break;
 case 128:
  err = vnic_dev_notify_set(enic->vdev,
   enic_msix_notify_intr(enic));
  break;
 default:
  err = vnic_dev_notify_set(enic->vdev, -1 );
  break;
 }
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
