
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct enc28j60_net {int dummy; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int enc28j60_check_link_status (struct net_device*) ;
 int enc28j60_hw_disable (struct enc28j60_net*) ;
 int enc28j60_hw_enable (struct enc28j60_net*) ;
 int enc28j60_hw_init (struct enc28j60_net*) ;
 int enc28j60_lowpower (struct enc28j60_net*,int) ;
 int enc28j60_set_hw_macaddr (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct enc28j60_net*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int enc28j60_net_open(struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);

 if (!is_valid_ether_addr(dev->dev_addr)) {
  if (netif_msg_ifup(priv))
   netdev_err(dev, "invalid MAC address %pM\n", dev->dev_addr);
  return -EADDRNOTAVAIL;
 }

 enc28j60_lowpower(priv, 0);
 enc28j60_hw_disable(priv);
 if (!enc28j60_hw_init(priv)) {
  if (netif_msg_ifup(priv))
   netdev_err(dev, "hw_reset() failed\n");
  return -EINVAL;
 }

 enc28j60_set_hw_macaddr(dev);

 enc28j60_hw_enable(priv);

 enc28j60_check_link_status(dev);



 netif_start_queue(dev);

 return 0;
}
