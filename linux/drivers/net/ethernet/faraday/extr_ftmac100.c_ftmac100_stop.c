
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {int irq; int napi; } ;


 int free_irq (int ,struct net_device*) ;
 int ftmac100_disable_all_int (struct ftmac100*) ;
 int ftmac100_free_buffers (struct ftmac100*) ;
 int ftmac100_stop_hw (struct ftmac100*) ;
 int napi_disable (int *) ;
 struct ftmac100* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ftmac100_stop(struct net_device *netdev)
{
 struct ftmac100 *priv = netdev_priv(netdev);

 ftmac100_disable_all_int(priv);
 netif_stop_queue(netdev);
 napi_disable(&priv->napi);
 ftmac100_stop_hw(priv);
 free_irq(priv->irq, netdev);
 ftmac100_free_buffers(priv);

 return 0;
}
