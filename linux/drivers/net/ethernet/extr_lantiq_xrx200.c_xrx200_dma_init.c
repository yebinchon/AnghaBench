
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int desc; int irq; int dev; int nr; } ;
struct xrx200_chan {TYPE_1__ dma; scalar_t__* skb; struct xrx200_priv* priv; } ;
struct xrx200_priv {struct xrx200_chan chan_rx; int dev; struct xrx200_chan chan_tx; } ;


 int DMA_PORT_ETOP ;
 int LTQ_DESC_NUM ;
 int XRX200_DMA_RX ;
 int XRX200_DMA_TX ;
 int dev_err (int ,char*,int ) ;
 int dev_kfree_skb_any (scalar_t__) ;
 int devm_request_irq (int ,int ,int ,int ,char*,struct xrx200_chan*) ;
 int ltq_dma_alloc_rx (TYPE_1__*) ;
 int ltq_dma_alloc_tx (TYPE_1__*) ;
 int ltq_dma_free (TYPE_1__*) ;
 int ltq_dma_init_port (int ) ;
 int xrx200_alloc_skb (struct xrx200_chan*) ;
 int xrx200_dma_irq ;

__attribute__((used)) static int xrx200_dma_init(struct xrx200_priv *priv)
{
 struct xrx200_chan *ch_rx = &priv->chan_rx;
 struct xrx200_chan *ch_tx = &priv->chan_tx;
 int ret = 0;
 int i;

 ltq_dma_init_port(DMA_PORT_ETOP);

 ch_rx->dma.nr = XRX200_DMA_RX;
 ch_rx->dma.dev = priv->dev;
 ch_rx->priv = priv;

 ltq_dma_alloc_rx(&ch_rx->dma);
 for (ch_rx->dma.desc = 0; ch_rx->dma.desc < LTQ_DESC_NUM;
      ch_rx->dma.desc++) {
  ret = xrx200_alloc_skb(ch_rx);
  if (ret)
   goto rx_free;
 }
 ch_rx->dma.desc = 0;
 ret = devm_request_irq(priv->dev, ch_rx->dma.irq, xrx200_dma_irq, 0,
          "xrx200_net_rx", &priv->chan_rx);
 if (ret) {
  dev_err(priv->dev, "failed to request RX irq %d\n",
   ch_rx->dma.irq);
  goto rx_ring_free;
 }

 ch_tx->dma.nr = XRX200_DMA_TX;
 ch_tx->dma.dev = priv->dev;
 ch_tx->priv = priv;

 ltq_dma_alloc_tx(&ch_tx->dma);
 ret = devm_request_irq(priv->dev, ch_tx->dma.irq, xrx200_dma_irq, 0,
          "xrx200_net_tx", &priv->chan_tx);
 if (ret) {
  dev_err(priv->dev, "failed to request TX irq %d\n",
   ch_tx->dma.irq);
  goto tx_free;
 }

 return ret;

tx_free:
 ltq_dma_free(&ch_tx->dma);

rx_ring_free:

 for (i = 0; i < LTQ_DESC_NUM; i++) {
  if (priv->chan_rx.skb[i])
   dev_kfree_skb_any(priv->chan_rx.skb[i]);
 }

rx_free:
 ltq_dma_free(&ch_rx->dma);
 return ret;
}
