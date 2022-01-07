
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* update_lport_state ) (struct fm10k_hw*,int ,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int xcast_mode; int glort_count; int glort; int state; struct fm10k_hw hw; struct net_device* netdev; } ;


 int FM10K_XCAST_MODE_NONE ;
 int __FM10K_MACVLAN_SCHED ;
 int __dev_mc_unsync (struct net_device*,int *) ;
 int __dev_uc_unsync (struct net_device*,int *) ;
 int fm10k_clear_macvlan_queue (struct fm10k_intfc*,int ,int) ;
 scalar_t__ fm10k_host_mbx_ready (struct fm10k_intfc*) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 int stub1 (struct fm10k_hw*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int ) ;
 int usleep_range (int,int) ;

void fm10k_reset_rx_state(struct fm10k_intfc *interface)
{
 struct net_device *netdev = interface->netdev;
 struct fm10k_hw *hw = &interface->hw;


 while (test_bit(__FM10K_MACVLAN_SCHED, interface->state))
  usleep_range(1000, 2000);


 fm10k_clear_macvlan_queue(interface, interface->glort, 1);

 fm10k_mbx_lock(interface);




 if (fm10k_host_mbx_ready(interface))
  hw->mac.ops.update_lport_state(hw, interface->glort,
            interface->glort_count, 0);

 fm10k_mbx_unlock(interface);


 interface->xcast_mode = FM10K_XCAST_MODE_NONE;


 __dev_uc_unsync(netdev, ((void*)0));
 __dev_mc_unsync(netdev, ((void*)0));
}
