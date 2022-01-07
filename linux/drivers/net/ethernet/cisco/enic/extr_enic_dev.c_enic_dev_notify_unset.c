
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_notify_unset (int ) ;

int enic_dev_notify_unset(struct enic *enic)
{
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 err = vnic_dev_notify_unset(enic->vdev);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
