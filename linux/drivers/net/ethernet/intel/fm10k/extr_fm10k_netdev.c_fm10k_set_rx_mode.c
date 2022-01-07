
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_3__ {int (* update_xcast_mode ) (struct fm10k_hw*,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int xcast_mode; int glort; struct fm10k_hw hw; } ;


 int FM10K_VLAN_ALL ;
 int FM10K_XCAST_MODE_ALLMULTI ;
 int FM10K_XCAST_MODE_MULTI ;
 int FM10K_XCAST_MODE_NONE ;
 int FM10K_XCAST_MODE_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int fm10k_clear_unused_vlans (struct fm10k_intfc*) ;
 scalar_t__ fm10k_host_mbx_ready (struct fm10k_intfc*) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 int fm10k_mc_sync ;
 int fm10k_mc_unsync ;
 int fm10k_queue_vlan_request (struct fm10k_intfc*,int ,int ,int) ;
 int fm10k_uc_sync ;
 int fm10k_uc_unsync ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int stub1 (struct fm10k_hw*,int ,int) ;

__attribute__((used)) static void fm10k_set_rx_mode(struct net_device *dev)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_hw *hw = &interface->hw;
 int xcast_mode;


 if (!(dev->flags & IFF_UP))
  return;


 xcast_mode = (dev->flags & IFF_PROMISC) ? FM10K_XCAST_MODE_PROMISC :
       (dev->flags & IFF_ALLMULTI) ? FM10K_XCAST_MODE_ALLMULTI :
       (dev->flags & (IFF_BROADCAST | IFF_MULTICAST)) ?
       FM10K_XCAST_MODE_MULTI : FM10K_XCAST_MODE_NONE;

 fm10k_mbx_lock(interface);


 if (interface->xcast_mode != xcast_mode) {

  if (xcast_mode == FM10K_XCAST_MODE_PROMISC)
   fm10k_queue_vlan_request(interface, FM10K_VLAN_ALL,
       0, 1);


  if (interface->xcast_mode == FM10K_XCAST_MODE_PROMISC)
   fm10k_clear_unused_vlans(interface);


  if (fm10k_host_mbx_ready(interface))
   hw->mac.ops.update_xcast_mode(hw, interface->glort,
            xcast_mode);


  interface->xcast_mode = xcast_mode;
 }


 __dev_uc_sync(dev, fm10k_uc_sync, fm10k_uc_unsync);
 __dev_mc_sync(dev, fm10k_mc_sync, fm10k_mc_unsync);

 fm10k_mbx_unlock(interface);
}
