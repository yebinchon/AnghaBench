
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {int devcmd_lock; TYPE_1__* netdev; int vdev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_del_addr (int ,int ) ;

int enic_dev_del_station_addr(struct enic *enic)
{
 int err;

 if (!is_valid_ether_addr(enic->netdev->dev_addr))
  return -EADDRNOTAVAIL;

 spin_lock_bh(&enic->devcmd_lock);
 err = vnic_dev_del_addr(enic->vdev, enic->netdev->dev_addr);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
