
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct enic {int devcmd_lock; } ;
typedef int __be16 ;


 int enic_add_vlan (struct enic*,int ) ;
 struct enic* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int enic_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 struct enic *enic = netdev_priv(netdev);
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 err = enic_add_vlan(enic, vid);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
