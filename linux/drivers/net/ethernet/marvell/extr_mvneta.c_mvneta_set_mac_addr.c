
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct mvneta_port {int rxq_def; } ;


 int eth_commit_mac_addr_change (struct net_device*,void*) ;
 int eth_prepare_mac_addr_change (struct net_device*,void*) ;
 int mvneta_mac_addr_set (struct mvneta_port*,int ,int) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvneta_set_mac_addr(struct net_device *dev, void *addr)
{
 struct mvneta_port *pp = netdev_priv(dev);
 struct sockaddr *sockaddr = addr;
 int ret;

 ret = eth_prepare_mac_addr_change(dev, addr);
 if (ret < 0)
  return ret;

 mvneta_mac_addr_set(pp, dev->dev_addr, -1);


 mvneta_mac_addr_set(pp, sockaddr->sa_data, pp->rxq_def);

 eth_commit_mac_addr_change(dev, addr);
 return 0;
}
