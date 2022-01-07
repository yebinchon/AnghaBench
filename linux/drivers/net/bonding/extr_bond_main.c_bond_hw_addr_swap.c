
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct slave {int dev; } ;
struct bonding {TYPE_1__* dev; } ;
struct TYPE_6__ {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int bond_hw_addr_flush (TYPE_1__*,int ) ;
 int dev_mc_sync (int ,TYPE_1__*) ;
 int dev_set_allmulti (int ,int) ;
 int dev_set_promiscuity (int ,int) ;
 int dev_uc_sync (int ,TYPE_1__*) ;
 int netif_addr_lock_bh (TYPE_1__*) ;
 int netif_addr_unlock_bh (TYPE_1__*) ;

__attribute__((used)) static void bond_hw_addr_swap(struct bonding *bond, struct slave *new_active,
         struct slave *old_active)
{
 if (old_active) {
  if (bond->dev->flags & IFF_PROMISC)
   dev_set_promiscuity(old_active->dev, -1);

  if (bond->dev->flags & IFF_ALLMULTI)
   dev_set_allmulti(old_active->dev, -1);

  bond_hw_addr_flush(bond->dev, old_active->dev);
 }

 if (new_active) {

  if (bond->dev->flags & IFF_PROMISC)
   dev_set_promiscuity(new_active->dev, 1);

  if (bond->dev->flags & IFF_ALLMULTI)
   dev_set_allmulti(new_active->dev, 1);

  netif_addr_lock_bh(bond->dev);
  dev_uc_sync(new_active->dev, bond->dev);
  dev_mc_sync(new_active->dev, bond->dev);
  netif_addr_unlock_bh(bond->dev);
 }
}
