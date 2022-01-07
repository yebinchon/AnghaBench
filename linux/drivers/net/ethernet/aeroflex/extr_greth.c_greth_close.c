
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct greth_private {int irq; int napi; } ;


 int free_irq (int ,void*) ;
 int greth_clean_rings (struct greth_private*) ;
 int greth_disable_irqs (struct greth_private*) ;
 int greth_disable_rx (struct greth_private*) ;
 int greth_disable_tx (struct greth_private*) ;
 int napi_disable (int *) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int greth_close(struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);

 napi_disable(&greth->napi);

 greth_disable_irqs(greth);
 greth_disable_tx(greth);
 greth_disable_rx(greth);

 netif_stop_queue(dev);

 free_irq(greth->irq, (void *) dev);

 greth_clean_rings(greth);

 return 0;
}
