
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int SPIDER_NET_GMACOPEMD ;
 int SPIDER_NET_GMACUNIMACL ;
 int SPIDER_NET_GMACUNIMACU ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int*,int ,int ) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_set_promisc (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static int
spider_net_set_mac(struct net_device *netdev, void *p)
{
 struct spider_net_card *card = netdev_priv(netdev);
 u32 macl, macu, regvalue;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, ETH_ALEN);


 regvalue = spider_net_read_reg(card, SPIDER_NET_GMACOPEMD);
 regvalue &= ~((1 << 5) | (1 << 6));
 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD, regvalue);


 macu = (netdev->dev_addr[0]<<24) + (netdev->dev_addr[1]<<16) +
  (netdev->dev_addr[2]<<8) + (netdev->dev_addr[3]);
 macl = (netdev->dev_addr[4]<<8) + (netdev->dev_addr[5]);
 spider_net_write_reg(card, SPIDER_NET_GMACUNIMACU, macu);
 spider_net_write_reg(card, SPIDER_NET_GMACUNIMACL, macl);


 regvalue = spider_net_read_reg(card, SPIDER_NET_GMACOPEMD);
 regvalue |= ((1 << 5) | (1 << 6));
 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD, regvalue);

 spider_net_set_promisc(card);

 return 0;
}
