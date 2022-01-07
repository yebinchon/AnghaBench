
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int active_vlans; int hw; } ;
typedef int __be16 ;


 int IXGB_READ_REG_ARRAY (int *,int ,int) ;
 int VFTA ;
 int ixgb_write_vfta (int *,int,int) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int
ixgb_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 u32 vfta, index;



 index = (vid >> 5) & 0x7F;
 vfta = IXGB_READ_REG_ARRAY(&adapter->hw, VFTA, index);
 vfta |= (1 << (vid & 0x1F));
 ixgb_write_vfta(&adapter->hw, index, vfta);
 set_bit(vid, adapter->active_vlans);

 return 0;
}
