
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_assign_type; int addr_len; int dev_addr; } ;
struct alx_hw {int mac_addr; } ;
struct alx_priv {struct alx_hw hw; } ;


 int EADDRNOTAVAIL ;
 int NET_ADDR_RANDOM ;
 int alx_set_macaddr (struct alx_hw*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int alx_set_mac_address(struct net_device *netdev, void *data)
{
 struct alx_priv *alx = netdev_priv(netdev);
 struct alx_hw *hw = &alx->hw;
 struct sockaddr *addr = data;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (netdev->addr_assign_type & NET_ADDR_RANDOM)
  netdev->addr_assign_type ^= NET_ADDR_RANDOM;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(hw->mac_addr, addr->sa_data, netdev->addr_len);
 alx_set_macaddr(hw, hw->mac_addr);

 return 0;
}
