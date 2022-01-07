
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mtk_mac {int phylink; struct mtk_eth* hw; } ;
struct mtk_eth {TYPE_1__* soc; int rx_napi; int tx_napi; int dma_refcnt; } ;
struct TYPE_2__ {int caps; } ;


 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_PDMA_GLO_CFG ;
 int MTK_QDMA ;
 int MTK_QDMA_GLO_CFG ;
 int MTK_RX_DONE_INT ;
 int MTK_TX_DONE_INT ;
 int mtk_dma_free (struct mtk_eth*) ;
 int mtk_rx_irq_disable (struct mtk_eth*,int ) ;
 int mtk_stop_dma (struct mtk_eth*,int ) ;
 int mtk_tx_irq_disable (struct mtk_eth*,int ) ;
 int napi_disable (int *) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phylink_disconnect_phy (int ) ;
 int phylink_stop (int ) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static int mtk_stop(struct net_device *dev)
{
 struct mtk_mac *mac = netdev_priv(dev);
 struct mtk_eth *eth = mac->hw;

 phylink_stop(mac->phylink);

 netif_tx_disable(dev);

 phylink_disconnect_phy(mac->phylink);


 if (!refcount_dec_and_test(&eth->dma_refcnt))
  return 0;

 mtk_tx_irq_disable(eth, MTK_TX_DONE_INT);
 mtk_rx_irq_disable(eth, MTK_RX_DONE_INT);
 napi_disable(&eth->tx_napi);
 napi_disable(&eth->rx_napi);

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA))
  mtk_stop_dma(eth, MTK_QDMA_GLO_CFG);
 mtk_stop_dma(eth, MTK_PDMA_GLO_CFG);

 mtk_dma_free(eth);

 return 0;
}
