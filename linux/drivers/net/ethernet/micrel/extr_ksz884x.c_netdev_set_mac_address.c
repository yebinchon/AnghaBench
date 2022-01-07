
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct ksz_hw {int mac_override; int override_addr; } ;
struct TYPE_2__ {scalar_t__ first_port; } ;
struct dev_priv {TYPE_1__ port; struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;


 int ETH_ALEN ;
 int hw_add_addr (struct ksz_hw*,int ) ;
 int hw_block_intr (struct ksz_hw*) ;
 int hw_del_addr (struct ksz_hw*,int ) ;
 int hw_restore_intr (struct ksz_hw*,int ) ;
 int hw_set_addr (struct ksz_hw*) ;
 int memcpy (int ,int ,int ) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_set_mac_address(struct net_device *dev, void *addr)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;
 struct sockaddr *mac = addr;
 uint interrupt;

 if (priv->port.first_port > 0)
  hw_del_addr(hw, dev->dev_addr);
 else {
  hw->mac_override = 1;
  memcpy(hw->override_addr, mac->sa_data, ETH_ALEN);
 }

 memcpy(dev->dev_addr, mac->sa_data, ETH_ALEN);

 interrupt = hw_block_intr(hw);

 if (priv->port.first_port > 0)
  hw_add_addr(hw, dev->dev_addr);
 else
  hw_set_addr(hw);
 hw_restore_intr(hw, interrupt);

 return 0;
}
