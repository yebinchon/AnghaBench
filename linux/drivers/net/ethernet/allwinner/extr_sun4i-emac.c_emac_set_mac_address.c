
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; } ;
struct emac_board_info {scalar_t__ membase; } ;


 int EBUSY ;
 scalar_t__ EMAC_MAC_A0_REG ;
 scalar_t__ EMAC_MAC_A1_REG ;
 int ETH_ALEN ;
 int memcpy (int*,int ,int ) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int emac_set_mac_address(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct emac_board_info *db = netdev_priv(dev);

 if (netif_running(dev))
  return -EBUSY;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 writel(dev->dev_addr[0] << 16 | dev->dev_addr[1] << 8 | dev->
        dev_addr[2], db->membase + EMAC_MAC_A1_REG);
 writel(dev->dev_addr[3] << 16 | dev->dev_addr[4] << 8 | dev->
        dev_addr[5], db->membase + EMAC_MAC_A0_REG);

 return 0;
}
