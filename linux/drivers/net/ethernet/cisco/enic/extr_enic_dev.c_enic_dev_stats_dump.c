
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_stats {int dummy; } ;
struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_stats_dump (int ,struct vnic_stats**) ;

int enic_dev_stats_dump(struct enic *enic, struct vnic_stats **vstats)
{
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 err = vnic_dev_stats_dump(enic->vdev, vstats);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
