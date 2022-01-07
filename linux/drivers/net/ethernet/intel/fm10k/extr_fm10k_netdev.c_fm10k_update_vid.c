
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int flags; int dev_addr; } ;
struct fm10k_ring {int vid; } ;
struct fm10k_l2_accel {int size; int dglort; struct net_device** macvlan; } ;
struct TYPE_2__ {int default_vid; int addr; scalar_t__ vlan_override; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int num_rx_queues; int glort; int vid; int state; int active_vlans; struct fm10k_ring** rx_ring; struct fm10k_hw hw; struct fm10k_l2_accel* l2_accel; } ;
typedef int s32 ;


 int EACCES ;
 int EINVAL ;
 int FM10K_VLAN_CLEAR ;
 int IFF_PROMISC ;
 int VLAN_N_VID ;
 int __FM10K_DOWN ;
 int __dev_mc_unsync (struct net_device*,int ) ;
 int __dev_uc_unsync (struct net_device*,int ) ;
 int clear_bit (int,int ) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 int fm10k_mc_vlan_unsync ;
 int fm10k_queue_mac_request (struct fm10k_intfc*,int,int ,int,int) ;
 int fm10k_queue_vlan_request (struct fm10k_intfc*,int,int ,int) ;
 int fm10k_uc_vlan_unsync ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int fm10k_update_vid(struct net_device *netdev, u16 vid, bool set)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 struct fm10k_l2_accel *l2_accel = interface->l2_accel;
 struct fm10k_hw *hw = &interface->hw;
 u16 glort;
 s32 err;
 int i;


 if (!vid)
  return 0;

 if (vid >= VLAN_N_VID)
  return -EINVAL;






 if (set && hw->mac.vlan_override)
  return -EACCES;


 set_bit(vid, interface->active_vlans);
 if (!set)
  clear_bit(vid, interface->active_vlans);


 for (i = 0; i < interface->num_rx_queues; i++) {
  struct fm10k_ring *rx_ring = interface->rx_ring[i];
  u16 rx_vid = rx_ring->vid & (VLAN_N_VID - 1);

  if (test_bit(rx_vid, interface->active_vlans))
   rx_ring->vid |= FM10K_VLAN_CLEAR;
  else
   rx_ring->vid &= ~FM10K_VLAN_CLEAR;
 }




 if (hw->mac.vlan_override)
  return 0;




 if (!set && vid == hw->mac.default_vid)
  return 0;




 if (test_bit(__FM10K_DOWN, interface->state))
  return 0;

 fm10k_mbx_lock(interface);


 if (!(netdev->flags & IFF_PROMISC)) {
  err = fm10k_queue_vlan_request(interface, vid, 0, set);
  if (err)
   goto err_out;
 }


 err = fm10k_queue_mac_request(interface, interface->glort,
          hw->mac.addr, vid, set);
 if (err)
  goto err_out;


 if (l2_accel) {
  for (i = 0; i < l2_accel->size; i++) {
   struct net_device *sdev = l2_accel->macvlan[i];

   if (!sdev)
    continue;

   glort = l2_accel->dglort + 1 + i;

   fm10k_queue_mac_request(interface, glort,
      sdev->dev_addr,
      vid, set);
  }
 }


 interface->vid = vid + (set ? VLAN_N_VID : 0);


 __dev_uc_unsync(netdev, fm10k_uc_vlan_unsync);
 __dev_mc_unsync(netdev, fm10k_mc_vlan_unsync);

err_out:
 fm10k_mbx_unlock(interface);

 return err;
}
