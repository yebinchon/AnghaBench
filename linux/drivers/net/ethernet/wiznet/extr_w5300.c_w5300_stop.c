
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int napi; } ;
struct net_device {int dummy; } ;


 int ifdown ;
 int napi_disable (int *) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct w5300_priv*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int w5300_hw_close (struct w5300_priv*) ;

__attribute__((used)) static int w5300_stop(struct net_device *ndev)
{
 struct w5300_priv *priv = netdev_priv(ndev);

 netif_info(priv, ifdown, ndev, "shutting down\n");
 w5300_hw_close(priv);
 netif_carrier_off(ndev);
 netif_stop_queue(ndev);
 napi_disable(&priv->napi);
 return 0;
}
