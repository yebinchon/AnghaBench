
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int napi; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int INT_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int napi_schedule (int *) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int pxa168_eth_collect_events (struct pxa168_eth_private*,struct net_device*) ;
 scalar_t__ unlikely (int) ;
 int wrl (struct pxa168_eth_private*,int ,int ) ;

__attribute__((used)) static irqreturn_t pxa168_eth_int_handler(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct pxa168_eth_private *pep = netdev_priv(dev);

 if (unlikely(!pxa168_eth_collect_events(pep, dev)))
  return IRQ_NONE;

 wrl(pep, INT_MASK, 0);
 napi_schedule(&pep->napi);
 return IRQ_HANDLED;
}
