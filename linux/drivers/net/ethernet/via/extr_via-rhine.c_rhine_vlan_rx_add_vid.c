
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rhine_private {int lock; int active_vlans; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct rhine_private* netdev_priv (struct net_device*) ;
 int rhine_update_vcam (struct net_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rhine_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct rhine_private *rp = netdev_priv(dev);

 spin_lock_bh(&rp->lock);
 set_bit(vid, rp->active_vlans);
 rhine_update_vcam(dev);
 spin_unlock_bh(&rp->lock);
 return 0;
}
