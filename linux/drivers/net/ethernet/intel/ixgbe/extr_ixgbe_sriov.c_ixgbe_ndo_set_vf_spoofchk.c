
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int (* set_ethertype_anti_spoofing ) (struct ixgbe_hw*,int,int) ;int (* set_vlan_anti_spoofing ) (struct ixgbe_hw*,int,int) ;int (* set_mac_anti_spoofing ) (struct ixgbe_hw*,int,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {int num_vfs; TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int spoofchk_enabled; } ;


 int EINVAL ;
 int ETH_P_LLDP ;
 int ETH_P_PAUSE ;
 int IXGBE_ETQF (int ) ;
 int IXGBE_ETQF_FILTER_EN ;
 int IXGBE_ETQF_FILTER_FC ;
 int IXGBE_ETQF_FILTER_LLDP ;
 int IXGBE_ETQF_TX_ANTISPOOF ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int,int) ;
 int stub2 (struct ixgbe_hw*,int,int) ;
 int stub3 (struct ixgbe_hw*,int,int) ;

int ixgbe_ndo_set_vf_spoofchk(struct net_device *netdev, int vf, bool setting)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 adapter->vfinfo[vf].spoofchk_enabled = setting;


 hw->mac.ops.set_mac_anti_spoofing(hw, setting, vf);


 hw->mac.ops.set_vlan_anti_spoofing(hw, setting, vf);




 if (hw->mac.ops.set_ethertype_anti_spoofing) {
  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_LLDP),
    (IXGBE_ETQF_FILTER_EN |
     IXGBE_ETQF_TX_ANTISPOOF |
     ETH_P_LLDP));

  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_FC),
    (IXGBE_ETQF_FILTER_EN |
     IXGBE_ETQF_TX_ANTISPOOF |
     ETH_P_PAUSE));

  hw->mac.ops.set_ethertype_anti_spoofing(hw, setting, vf);
 }

 return 0;
}
