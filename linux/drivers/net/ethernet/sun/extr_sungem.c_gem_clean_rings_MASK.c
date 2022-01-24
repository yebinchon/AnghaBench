#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct gem_txd {scalar_t__ control_word; scalar_t__ buffer; } ;
struct gem_rxd {scalar_t__ buffer; scalar_t__ status_word; } ;
struct gem_init_block {struct gem_txd* txd; struct gem_rxd* rxd; } ;
struct gem {int /*<<< orphan*/  pdev; struct sk_buff** tx_skbs; struct sk_buff** rx_skbs; struct gem_init_block* init_block; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC0 (struct gem*) ; 
 int RX_RING_SIZE ; 
 int TXDCTRL_BUFSZ ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct gem *gp)
{
	struct gem_init_block *gb = gp->init_block;
	struct sk_buff *skb;
	int i;
	dma_addr_t dma_addr;

	for (i = 0; i < RX_RING_SIZE; i++) {
		struct gem_rxd *rxd;

		rxd = &gb->rxd[i];
		if (gp->rx_skbs[i] != NULL) {
			skb = gp->rx_skbs[i];
			dma_addr = FUNC3(rxd->buffer);
			FUNC4(gp->pdev, dma_addr,
				       FUNC0(gp),
				       PCI_DMA_FROMDEVICE);
			FUNC1(skb);
			gp->rx_skbs[i] = NULL;
		}
		rxd->status_word = 0;
		FUNC2();
		rxd->buffer = 0;
	}

	for (i = 0; i < TX_RING_SIZE; i++) {
		if (gp->tx_skbs[i] != NULL) {
			struct gem_txd *txd;
			int frag;

			skb = gp->tx_skbs[i];
			gp->tx_skbs[i] = NULL;

			for (frag = 0; frag <= FUNC5(skb)->nr_frags; frag++) {
				int ent = i & (TX_RING_SIZE - 1);

				txd = &gb->txd[ent];
				dma_addr = FUNC3(txd->buffer);
				FUNC4(gp->pdev, dma_addr,
					       FUNC3(txd->control_word) &
					       TXDCTRL_BUFSZ, PCI_DMA_TODEVICE);

				if (frag != FUNC5(skb)->nr_frags)
					i++;
			}
			FUNC1(skb);
		}
	}
}