
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dummy; } ;
struct net_device {int mtu; int dev; } ;


 int dev_err (int *,char*) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ pxa168_eth_open (struct net_device*) ;
 int pxa168_eth_stop (struct net_device*) ;
 int set_port_config_ext (struct pxa168_eth_private*) ;

__attribute__((used)) static int pxa168_eth_change_mtu(struct net_device *dev, int mtu)
{
 int retval;
 struct pxa168_eth_private *pep = netdev_priv(dev);

 dev->mtu = mtu;
 retval = set_port_config_ext(pep);

 if (!netif_running(dev))
  return 0;







 pxa168_eth_stop(dev);
 if (pxa168_eth_open(dev)) {
  dev_err(&dev->dev,
   "fatal error on re-opening device after MTU change\n");
 }

 return 0;
}
