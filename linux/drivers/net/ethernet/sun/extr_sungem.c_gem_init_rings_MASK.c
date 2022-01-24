#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {scalar_t__ mtu; } ;
struct gem_txd {scalar_t__ buffer; scalar_t__ control_word; } ;
struct gem_rxd {void* status_word; void* buffer; } ;
struct gem_init_block {struct gem_txd* txd; struct gem_rxd* rxd; } ;
struct gem {int /*<<< orphan*/  pdev; scalar_t__ rx_buf_sz; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct net_device* dev; struct gem_init_block* init_block; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct gem*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 scalar_t__ RX_OFFSET ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 scalar_t__ VLAN_ETH_FRAME_LEN ; 
 scalar_t__ VLAN_HLEN ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sk_buff* FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gem*) ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct gem *gp)
{
	struct gem_init_block *gb = gp->init_block;
	struct net_device *dev = gp->dev;
	int i;
	dma_addr_t dma_addr;

	gp->rx_new = gp->rx_old = gp->tx_new = gp->tx_old = 0;

	FUNC5(gp);

	gp->rx_buf_sz = FUNC6(dev->mtu + ETH_HLEN + VLAN_HLEN,
			    (unsigned)VLAN_ETH_FRAME_LEN);

	for (i = 0; i < RX_RING_SIZE; i++) {
		struct sk_buff *skb;
		struct gem_rxd *rxd = &gb->rxd[i];

		skb = FUNC4(dev, FUNC1(gp), GFP_KERNEL);
		if (!skb) {
			rxd->buffer = 0;
			rxd->status_word = 0;
			continue;
		}

		gp->rx_skbs[i] = skb;
		FUNC9(skb, (gp->rx_buf_sz + RX_OFFSET));
		dma_addr = FUNC8(gp->pdev,
					FUNC11(skb->data),
					FUNC7(skb->data),
					FUNC1(gp),
					PCI_DMA_FROMDEVICE);
		rxd->buffer = FUNC2(dma_addr);
		FUNC3();
		rxd->status_word = FUNC2(FUNC0(gp));
		FUNC10(skb, RX_OFFSET);
	}

	for (i = 0; i < TX_RING_SIZE; i++) {
		struct gem_txd *txd = &gb->txd[i];

		txd->control_word = 0;
		FUNC3();
		txd->buffer = 0;
	}
	FUNC12();
}