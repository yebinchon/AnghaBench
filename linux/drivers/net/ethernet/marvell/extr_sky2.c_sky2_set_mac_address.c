
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ regs; } ;
struct net_device {int dev_addr; } ;


 scalar_t__ B2_MAC_1 ;
 scalar_t__ B2_MAC_2 ;
 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int GM_SRC_ADDR_1L ;
 int GM_SRC_ADDR_2L ;
 int gma_set_addr (struct sky2_hw*,unsigned int,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int memcpy_toio (scalar_t__,int ,int ) ;
 struct sky2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sky2_set_mac_address(struct net_device *dev, void *p)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 const struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);
 memcpy_toio(hw->regs + B2_MAC_1 + port * 8,
      dev->dev_addr, ETH_ALEN);
 memcpy_toio(hw->regs + B2_MAC_2 + port * 8,
      dev->dev_addr, ETH_ALEN);


 gma_set_addr(hw, port, GM_SRC_ADDR_2L, dev->dev_addr);


 gma_set_addr(hw, port, GM_SRC_ADDR_1L, dev->dev_addr);

 return 0;
}
