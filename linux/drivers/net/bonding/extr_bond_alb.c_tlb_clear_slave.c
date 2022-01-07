
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct bonding {int mode_lock; } ;


 int __tlb_clear_slave (struct bonding*,struct slave*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void tlb_clear_slave(struct bonding *bond, struct slave *slave,
    int save_load)
{
 spin_lock_bh(&bond->mode_lock);
 __tlb_clear_slave(bond, slave, save_load);
 spin_unlock_bh(&bond->mode_lock);
}
