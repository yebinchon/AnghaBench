
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_enet_priv {int irq; int napi; } ;
struct net_device {int dummy; } ;
typedef int s32 ;


 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nps_enet_hw_disable_control (struct net_device*) ;

__attribute__((used)) static s32 nps_enet_stop(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);

 napi_disable(&priv->napi);
 netif_stop_queue(ndev);
 nps_enet_hw_disable_control(ndev);
 free_irq(priv->irq, ndev);

 return 0;
}
