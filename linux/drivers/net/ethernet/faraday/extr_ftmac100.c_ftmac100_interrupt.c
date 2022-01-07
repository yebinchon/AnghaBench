
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftmac100 {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ftmac100_disable_all_int (struct ftmac100*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 struct ftmac100* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static irqreturn_t ftmac100_interrupt(int irq, void *dev_id)
{
 struct net_device *netdev = dev_id;
 struct ftmac100 *priv = netdev_priv(netdev);


 ftmac100_disable_all_int(priv);
 if (likely(netif_running(netdev)))
  napi_schedule(&priv->napi);

 return IRQ_HANDLED;
}
