
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;
struct bcm_sysport_priv {int dummy; } ;


 int EINVAL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int umac_set_hw_addr (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static int bcm_sysport_change_mac(struct net_device *dev, void *p)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EINVAL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);




 if (!netif_running(dev))
  return 0;

 umac_set_hw_addr(priv, dev->dev_addr);

 return 0;
}
