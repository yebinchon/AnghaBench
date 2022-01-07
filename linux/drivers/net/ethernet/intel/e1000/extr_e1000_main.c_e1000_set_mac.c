
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct e1000_hw {scalar_t__ mac_type; int mac_addr; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int EADDRNOTAVAIL ;
 scalar_t__ e1000_82542_rev2_0 ;
 int e1000_enter_82542_rst (struct e1000_adapter*) ;
 int e1000_leave_82542_rst (struct e1000_adapter*) ;
 int e1000_rar_set (struct e1000_hw*,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_mac(struct net_device *netdev, void *p)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;



 if (hw->mac_type == e1000_82542_rev2_0)
  e1000_enter_82542_rst(adapter);

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(hw->mac_addr, addr->sa_data, netdev->addr_len);

 e1000_rar_set(hw, hw->mac_addr, 0);

 if (hw->mac_type == e1000_82542_rev2_0)
  e1000_leave_82542_rst(adapter);

 return 0;
}
