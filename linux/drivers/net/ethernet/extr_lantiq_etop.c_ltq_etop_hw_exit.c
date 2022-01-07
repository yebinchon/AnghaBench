
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ltq_etop_priv {int * ch; } ;


 scalar_t__ IS_RX (int) ;
 scalar_t__ IS_TX (int) ;
 int MAX_DMA_CHAN ;
 int PMU_PPE ;
 int ltq_etop_free_channel (struct net_device*,int *) ;
 int ltq_pmu_disable (int ) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ltq_etop_hw_exit(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 int i;

 ltq_pmu_disable(PMU_PPE);
 for (i = 0; i < MAX_DMA_CHAN; i++)
  if (IS_TX(i) || IS_RX(i))
   ltq_etop_free_channel(dev, &priv->ch[i]);
}
