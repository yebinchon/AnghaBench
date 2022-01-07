
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ltq_etop_priv {struct ltq_etop_chan* ch; } ;
struct ltq_etop_chan {int napi; int dma; } ;


 int IS_RX (int) ;
 int IS_TX (int) ;
 int MAX_DMA_CHAN ;
 int ltq_dma_enable_irq (int *) ;
 int ltq_dma_open (int *) ;
 int napi_enable (int *) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_start (int ) ;

__attribute__((used)) static int
ltq_etop_open(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 int i;

 for (i = 0; i < MAX_DMA_CHAN; i++) {
  struct ltq_etop_chan *ch = &priv->ch[i];

  if (!IS_TX(i) && (!IS_RX(i)))
   continue;
  ltq_dma_open(&ch->dma);
  ltq_dma_enable_irq(&ch->dma);
  napi_enable(&ch->napi);
 }
 phy_start(dev->phydev);
 netif_tx_start_all_queues(dev);
 return 0;
}
