
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; int features; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {unsigned int vfs_allocated_count; int max_frame_size; struct e1000_hw hw; } ;


 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_RCTL_UPE ;
 int E1000_RCTL_VFE ;
 int E1000_RLPML ;
 int E1000_VMOLR (unsigned int) ;
 int E1000_VMOLR_LPE ;
 int E1000_VMOLR_MPME ;
 int E1000_VMOLR_RLPML_MASK ;
 int E1000_VMOLR_ROMPE ;
 int E1000_VMOLR_ROPE ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IGB_MAX_FRAME_BUILD_SKB ;
 int MAX_JUMBO_FRAME_SIZE ;
 int NETIF_F_RXALL ;
 scalar_t__ __dev_uc_sync (struct net_device*,int ,int ) ;
 scalar_t__ e1000_82576 ;
 scalar_t__ e1000_i350 ;
 int igb_restore_vf_multicasts (struct igb_adapter*) ;
 int igb_set_uta (struct igb_adapter*,int) ;
 int igb_uc_sync ;
 int igb_uc_unsync ;
 int igb_vlan_promisc_disable (struct igb_adapter*) ;
 scalar_t__ igb_vlan_promisc_enable (struct igb_adapter*) ;
 int igb_write_mc_addr_list (struct net_device*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_set_rx_mode(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 unsigned int vfn = adapter->vfs_allocated_count;
 u32 rctl = 0, vmolr = 0, rlpml = MAX_JUMBO_FRAME_SIZE;
 int count;


 if (netdev->flags & IFF_PROMISC) {
  rctl |= E1000_RCTL_UPE | E1000_RCTL_MPE;
  vmolr |= E1000_VMOLR_MPME;


  if (hw->mac.type == e1000_82576)
   vmolr |= E1000_VMOLR_ROPE;
 } else {
  if (netdev->flags & IFF_ALLMULTI) {
   rctl |= E1000_RCTL_MPE;
   vmolr |= E1000_VMOLR_MPME;
  } else {




   count = igb_write_mc_addr_list(netdev);
   if (count < 0) {
    rctl |= E1000_RCTL_MPE;
    vmolr |= E1000_VMOLR_MPME;
   } else if (count) {
    vmolr |= E1000_VMOLR_ROMPE;
   }
  }
 }





 if (__dev_uc_sync(netdev, igb_uc_sync, igb_uc_unsync)) {
  rctl |= E1000_RCTL_UPE;
  vmolr |= E1000_VMOLR_ROPE;
 }


 rctl |= E1000_RCTL_VFE;


 if ((netdev->flags & IFF_PROMISC) ||
     (netdev->features & NETIF_F_RXALL)) {

  if (igb_vlan_promisc_enable(adapter))
   rctl &= ~E1000_RCTL_VFE;
 } else {
  igb_vlan_promisc_disable(adapter);
 }


 rctl |= rd32(E1000_RCTL) & ~(E1000_RCTL_UPE | E1000_RCTL_MPE |
         E1000_RCTL_VFE);
 wr32(E1000_RCTL, rctl);


 if (!adapter->vfs_allocated_count) {
  if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
   rlpml = IGB_MAX_FRAME_BUILD_SKB;
 }

 wr32(E1000_RLPML, rlpml);






 if ((hw->mac.type < e1000_82576) || (hw->mac.type > e1000_i350))
  return;


 igb_set_uta(adapter, !!(vmolr & E1000_VMOLR_ROPE));

 vmolr |= rd32(E1000_VMOLR(vfn)) &
   ~(E1000_VMOLR_ROPE | E1000_VMOLR_MPME | E1000_VMOLR_ROMPE);


 vmolr &= ~E1000_VMOLR_RLPML_MASK;

 if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
  vmolr |= IGB_MAX_FRAME_BUILD_SKB;
 else

  vmolr |= MAX_JUMBO_FRAME_SIZE;
 vmolr |= E1000_VMOLR_LPE;

 wr32(E1000_VMOLR(vfn), vmolr);

 igb_restore_vf_multicasts(adapter);
}
