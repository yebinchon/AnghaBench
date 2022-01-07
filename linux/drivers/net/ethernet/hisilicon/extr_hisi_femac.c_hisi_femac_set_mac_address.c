
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_assign_type; int addr_len; } ;
struct hisi_femac_priv {int dummy; } ;


 int EADDRNOTAVAIL ;
 int NET_ADDR_RANDOM ;
 int hisi_femac_set_hw_mac_addr (struct hisi_femac_priv*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hisi_femac_set_mac_address(struct net_device *dev, void *p)
{
 struct hisi_femac_priv *priv = netdev_priv(dev);
 struct sockaddr *skaddr = p;

 if (!is_valid_ether_addr(skaddr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, skaddr->sa_data, dev->addr_len);
 dev->addr_assign_type &= ~NET_ADDR_RANDOM;

 hisi_femac_set_hw_mac_addr(priv, dev->dev_addr);

 return 0;
}
