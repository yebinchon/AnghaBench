
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ltq_etop_priv {struct ltq_etop_chan* ch; } ;
struct ltq_etop_chan {int dma; int napi; } ;


 int IS_RX (int) ;
 int IS_TX (int) ;
 int MAX_DMA_CHAN ;
 int ltq_dma_close (int *) ;
 int napi_disable (int *) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int
ltq_etop_stop(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 int i;

 netif_tx_stop_all_queues(dev);
 phy_stop(dev->phydev);
 for (i = 0; i < MAX_DMA_CHAN; i++) {
  struct ltq_etop_chan *ch = &priv->ch[i];

  if (!IS_RX(i) && !IS_TX(i))
   continue;
  napi_disable(&ch->napi);
  ltq_dma_close(&ch->dma);
 }
 return 0;
}
