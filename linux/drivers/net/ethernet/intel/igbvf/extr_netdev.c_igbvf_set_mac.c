
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_3__ {int (* rar_set ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_4__ {int addr; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; int mbx_lock; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;


 int EADDRNOTAVAIL ;
 int ether_addr_equal (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static int igbvf_set_mac(struct net_device *netdev, void *p)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(hw->mac.addr, addr->sa_data, netdev->addr_len);

 spin_lock_bh(&hw->mbx_lock);

 hw->mac.ops.rar_set(hw, hw->mac.addr, 0);

 spin_unlock_bh(&hw->mbx_lock);

 if (!ether_addr_equal(addr->sa_data, hw->mac.addr))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 return 0;
}
