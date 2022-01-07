
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_3__ {int (* rar_set ) (struct e1000_hw*,int ,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ rar_entry_count; int addr; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int EADDRNOTAVAIL ;
 int FLAG_RESET_OVERWRITES_LAA ;
 int e1000e_set_laa_state_82571 (struct e1000_hw*,int) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct e1000_hw*,int ,scalar_t__) ;
 int stub2 (struct e1000_hw*,int ,scalar_t__) ;

__attribute__((used)) static int e1000_set_mac(struct net_device *netdev, void *p)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(adapter->hw.mac.addr, addr->sa_data, netdev->addr_len);

 hw->mac.ops.rar_set(&adapter->hw, adapter->hw.mac.addr, 0);

 if (adapter->flags & FLAG_RESET_OVERWRITES_LAA) {

  e1000e_set_laa_state_82571(&adapter->hw, 1);
  hw->mac.ops.rar_set(&adapter->hw, adapter->hw.mac.addr,
        adapter->hw.mac.rar_entry_count - 1);
 }

 return 0;
}
