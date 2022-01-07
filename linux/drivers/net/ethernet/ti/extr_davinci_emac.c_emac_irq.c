
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_priv {int napi; int ndev; int isr_count; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int emac_int_disable (struct emac_priv*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 int netif_running (int ) ;

__attribute__((used)) static irqreturn_t emac_irq(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct emac_priv *priv = netdev_priv(ndev);

 ++priv->isr_count;
 if (likely(netif_running(priv->ndev))) {
  emac_int_disable(priv);
  napi_schedule(&priv->napi);
 } else {

 }
 return IRQ_HANDLED;
}
