
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; int flags; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int user_set_promisc; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef int netdev_features_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_BAM ;
 int IXGBE_FCTRL_DPF ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_FCTRL_PMCF ;
 int IXGBE_FCTRL_SBP ;
 int IXGBE_FCTRL_UPE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VMOLR (int ) ;
 int IXGBE_VMOLR_AUPE ;
 int IXGBE_VMOLR_BAM ;
 int IXGBE_VMOLR_MPE ;
 int IXGBE_VMOLR_ROMPE ;
 int IXGBE_VMOLR_ROPE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXALL ;
 int VMDQ_P (int ) ;
 scalar_t__ __dev_uc_sync (struct net_device*,int ,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_uc_sync ;
 int ixgbe_uc_unsync ;
 int ixgbe_vlan_promisc_disable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_promisc_enable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_strip_disable (struct ixgbe_adapter*) ;
 int ixgbe_vlan_strip_enable (struct ixgbe_adapter*) ;
 int ixgbe_write_mc_addr_list (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

void ixgbe_set_rx_mode(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 fctrl, vmolr = IXGBE_VMOLR_BAM | IXGBE_VMOLR_AUPE;
 netdev_features_t features = netdev->features;
 int count;


 fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);


 fctrl &= ~IXGBE_FCTRL_SBP;
 fctrl |= IXGBE_FCTRL_BAM;
 fctrl |= IXGBE_FCTRL_DPF;
 fctrl |= IXGBE_FCTRL_PMCF;


 fctrl &= ~(IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
 if (netdev->flags & IFF_PROMISC) {
  hw->addr_ctrl.user_set_promisc = 1;
  fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
  vmolr |= IXGBE_VMOLR_MPE;
  features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
 } else {
  if (netdev->flags & IFF_ALLMULTI) {
   fctrl |= IXGBE_FCTRL_MPE;
   vmolr |= IXGBE_VMOLR_MPE;
  }
  hw->addr_ctrl.user_set_promisc = 0;
 }






 if (__dev_uc_sync(netdev, ixgbe_uc_sync, ixgbe_uc_unsync)) {
  fctrl |= IXGBE_FCTRL_UPE;
  vmolr |= IXGBE_VMOLR_ROPE;
 }





 count = ixgbe_write_mc_addr_list(netdev);
 if (count < 0) {
  fctrl |= IXGBE_FCTRL_MPE;
  vmolr |= IXGBE_VMOLR_MPE;
 } else if (count) {
  vmolr |= IXGBE_VMOLR_ROMPE;
 }

 if (hw->mac.type != ixgbe_mac_82598EB) {
  vmolr |= IXGBE_READ_REG(hw, IXGBE_VMOLR(VMDQ_P(0))) &
    ~(IXGBE_VMOLR_MPE | IXGBE_VMOLR_ROMPE |
      IXGBE_VMOLR_ROPE);
  IXGBE_WRITE_REG(hw, IXGBE_VMOLR(VMDQ_P(0)), vmolr);
 }


 if (features & NETIF_F_RXALL) {


  fctrl |= (IXGBE_FCTRL_SBP |
     IXGBE_FCTRL_BAM |
     IXGBE_FCTRL_PMCF);

  fctrl &= ~(IXGBE_FCTRL_DPF);

 }

 IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);

 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  ixgbe_vlan_strip_enable(adapter);
 else
  ixgbe_vlan_strip_disable(adapter);

 if (features & NETIF_F_HW_VLAN_CTAG_FILTER)
  ixgbe_vlan_promisc_disable(adapter);
 else
  ixgbe_vlan_promisc_enable(adapter);
}
