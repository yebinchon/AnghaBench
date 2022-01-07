
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct velocity_info {int lock; int active_vlans; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct velocity_info* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int velocity_init_cam_filter (struct velocity_info*) ;

__attribute__((used)) static int velocity_vlan_rx_add_vid(struct net_device *dev,
        __be16 proto, u16 vid)
{
 struct velocity_info *vptr = netdev_priv(dev);

 spin_lock_irq(&vptr->lock);
 set_bit(vid, vptr->active_vlans);
 velocity_init_cam_filter(vptr);
 spin_unlock_irq(&vptr->lock);
 return 0;
}
