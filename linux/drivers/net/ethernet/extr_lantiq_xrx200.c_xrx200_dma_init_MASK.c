#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int desc; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  nr; } ;
struct xrx200_chan {TYPE_1__ dma; scalar_t__* skb; struct xrx200_priv* priv; } ;
struct xrx200_priv {struct xrx200_chan chan_rx; int /*<<< orphan*/  dev; struct xrx200_chan chan_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PORT_ETOP ; 
 int LTQ_DESC_NUM ; 
 int /*<<< orphan*/  XRX200_DMA_RX ; 
 int /*<<< orphan*/  XRX200_DMA_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xrx200_chan*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xrx200_chan*) ; 
 int /*<<< orphan*/  xrx200_dma_irq ; 

__attribute__((used)) static int FUNC8(struct xrx200_priv *priv)
{
	struct xrx200_chan *ch_rx = &priv->chan_rx;
	struct xrx200_chan *ch_tx = &priv->chan_tx;
	int ret = 0;
	int i;

	FUNC6(DMA_PORT_ETOP);

	ch_rx->dma.nr = XRX200_DMA_RX;
	ch_rx->dma.dev = priv->dev;
	ch_rx->priv = priv;

	FUNC3(&ch_rx->dma);
	for (ch_rx->dma.desc = 0; ch_rx->dma.desc < LTQ_DESC_NUM;
	     ch_rx->dma.desc++) {
		ret = FUNC7(ch_rx);
		if (ret)
			goto rx_free;
	}
	ch_rx->dma.desc = 0;
	ret = FUNC2(priv->dev, ch_rx->dma.irq, xrx200_dma_irq, 0,
			       "xrx200_net_rx", &priv->chan_rx);
	if (ret) {
		FUNC0(priv->dev, "failed to request RX irq %d\n",
			ch_rx->dma.irq);
		goto rx_ring_free;
	}

	ch_tx->dma.nr = XRX200_DMA_TX;
	ch_tx->dma.dev = priv->dev;
	ch_tx->priv = priv;

	FUNC4(&ch_tx->dma);
	ret = FUNC2(priv->dev, ch_tx->dma.irq, xrx200_dma_irq, 0,
			       "xrx200_net_tx", &priv->chan_tx);
	if (ret) {
		FUNC0(priv->dev, "failed to request TX irq %d\n",
			ch_tx->dma.irq);
		goto tx_free;
	}

	return ret;

tx_free:
	FUNC5(&ch_tx->dma);

rx_ring_free:
	/* free the allocated RX ring */
	for (i = 0; i < LTQ_DESC_NUM; i++) {
		if (priv->chan_rx.skb[i])
			FUNC1(priv->chan_rx.skb[i]);
	}

rx_free:
	FUNC5(&ch_rx->dma);
	return ret;
}