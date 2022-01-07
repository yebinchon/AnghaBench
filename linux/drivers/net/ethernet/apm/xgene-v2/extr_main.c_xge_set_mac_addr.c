
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_mac_set_station_addr (struct xge_pdata*) ;

__attribute__((used)) static int xge_set_mac_addr(struct net_device *ndev, void *addr)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 int ret;

 ret = eth_mac_addr(ndev, addr);
 if (ret)
  return ret;

 xge_mac_set_station_addr(pdata);

 return 0;
}
