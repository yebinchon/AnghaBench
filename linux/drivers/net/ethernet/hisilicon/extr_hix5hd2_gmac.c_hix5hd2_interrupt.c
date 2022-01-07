
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hix5hd2_priv {int napi; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int DEF_INT_MASK ;
 int IRQ_HANDLED ;
 scalar_t__ RAW_PMU_INT ;
 int hix5hd2_irq_disable (struct hix5hd2_priv*) ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t hix5hd2_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct hix5hd2_priv *priv = netdev_priv(dev);
 int ints = readl_relaxed(priv->base + RAW_PMU_INT);

 writel_relaxed(ints, priv->base + RAW_PMU_INT);
 if (likely(ints & DEF_INT_MASK)) {
  hix5hd2_irq_disable(priv);
  napi_schedule(&priv->napi);
 }

 return IRQ_HANDLED;
}
