
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_can_priv {int napi; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCH_CAN_NONE ;
 int napi_schedule (int *) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int pch_can_int_pending (struct pch_can_priv*) ;
 int pch_can_set_int_enables (struct pch_can_priv*,int ) ;

__attribute__((used)) static irqreturn_t pch_can_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct pch_can_priv *priv = netdev_priv(ndev);

 if (!pch_can_int_pending(priv))
  return IRQ_NONE;

 pch_can_set_int_enables(priv, PCH_CAN_NONE);
 napi_schedule(&priv->napi);
 return IRQ_HANDLED;
}
