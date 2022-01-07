
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_add_addr (int ,int const*) ;

int enic_dev_add_addr(struct enic *enic, const u8 *addr)
{
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 err = vnic_dev_add_addr(enic->vdev, addr);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
