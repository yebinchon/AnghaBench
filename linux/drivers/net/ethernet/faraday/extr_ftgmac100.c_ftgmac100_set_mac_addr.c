
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int eth_commit_mac_addr_change (struct net_device*,void*) ;
 int eth_prepare_mac_addr_change (struct net_device*,void*) ;
 int ftgmac100_write_mac_addr (int ,int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int ftgmac100_set_mac_addr(struct net_device *dev, void *p)
{
 int ret;

 ret = eth_prepare_mac_addr_change(dev, p);
 if (ret < 0)
  return ret;

 eth_commit_mac_addr_change(dev, p);
 ftgmac100_write_mac_addr(netdev_priv(dev), dev->dev_addr);

 return 0;
}
