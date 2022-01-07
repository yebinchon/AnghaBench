
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cfv_info {int napi; } ;


 int ENOMEM ;
 scalar_t__ cfv_create_genpool (struct cfv_info*) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 struct cfv_info* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int cfv_netdev_open(struct net_device *netdev)
{
 struct cfv_info *cfv = netdev_priv(netdev);

 if (cfv_create_genpool(cfv))
  return -ENOMEM;

 netif_carrier_on(netdev);
 napi_enable(&cfv->napi);


 napi_schedule(&cfv->napi);
 return 0;
}
