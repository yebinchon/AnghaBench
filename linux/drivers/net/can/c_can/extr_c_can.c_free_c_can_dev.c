
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {int napi; } ;


 int free_candev (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;

void free_c_can_dev(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);

 netif_napi_del(&priv->napi);
 free_candev(dev);
}
