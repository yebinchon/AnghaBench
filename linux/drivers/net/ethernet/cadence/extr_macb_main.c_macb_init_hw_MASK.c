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
typedef  int u32 ;
struct macb_queue {int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  rx_ring_dma; } ;
struct macb {scalar_t__ phy_interface; int caps; unsigned int num_queues; int hw_dma_cap; int rx_intr_mask; struct macb_queue* queues; int /*<<< orphan*/  rx_frm_len_mask; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ jumbo_max_len; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIG ; 
 int /*<<< orphan*/  CAF ; 
 int /*<<< orphan*/  DRFCS ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HRESP ; 
 int HW_DMA_CAP_64B ; 
 int /*<<< orphan*/  IER ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  JFRAME ; 
 int /*<<< orphan*/  JML ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MACB_CAPS_JUMBO ; 
 int /*<<< orphan*/  MACB_RX_FRMLEN_MASK ; 
 int /*<<< orphan*/  MACB_RX_JFRMLEN_MASK ; 
 int MACB_TX_INT_FLAGS ; 
 int /*<<< orphan*/  NBC ; 
 int /*<<< orphan*/  NCFGR ; 
 int /*<<< orphan*/  NCR ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int /*<<< orphan*/  PAE ; 
 int /*<<< orphan*/  PCSSEL ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  RBOF ; 
 int /*<<< orphan*/  RBQP ; 
 int /*<<< orphan*/  RBQPH ; 
 int /*<<< orphan*/  RE ; 
 int /*<<< orphan*/  RXCOEN ; 
 int /*<<< orphan*/  SGMIIEN ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  TBQP ; 
 int /*<<< orphan*/  TBQPH ; 
 int /*<<< orphan*/  TE ; 
 int /*<<< orphan*/  FUNC3 (struct macb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macb*) ; 
 int FUNC6 (struct macb*) ; 
 scalar_t__ FUNC7 (struct macb*) ; 
 int FUNC8 (struct macb*) ; 
 int FUNC9 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct macb*) ; 
 int /*<<< orphan*/  FUNC11 (struct macb*) ; 
 int /*<<< orphan*/  FUNC12 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct macb_queue*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct macb *bp)
{
	struct macb_queue *queue;
	unsigned int q;

	u32 config;

	FUNC10(bp);
	FUNC11(bp);

	config = FUNC8(bp);
	if (bp->phy_interface == PHY_INTERFACE_MODE_SGMII)
		config |= FUNC0(SGMIIEN) | FUNC0(PCSSEL);
	config |= FUNC1(RBOF, NET_IP_ALIGN);	/* Make eth data aligned */
	config |= FUNC2(PAE);		/* PAuse Enable */
	config |= FUNC2(DRFCS);		/* Discard Rx FCS */
	if (bp->caps & MACB_CAPS_JUMBO)
		config |= FUNC2(JFRAME);	/* Enable jumbo frames */
	else
		config |= FUNC2(BIG);	/* Receive oversized frames */
	if (bp->dev->flags & IFF_PROMISC)
		config |= FUNC2(CAF);	/* Copy All Frames */
	else if (FUNC7(bp) && bp->dev->features & NETIF_F_RXCSUM)
		config |= FUNC0(RXCOEN);
	if (!(bp->dev->flags & IFF_BROADCAST))
		config |= FUNC2(NBC);	/* No BroadCast */
	config |= FUNC6(bp);
	FUNC12(bp, NCFGR, config);
	if ((bp->caps & MACB_CAPS_JUMBO) && bp->jumbo_max_len)
		FUNC3(bp, JML, bp->jumbo_max_len);
	bp->speed = SPEED_10;
	bp->duplex = DUPLEX_HALF;
	bp->rx_frm_len_mask = MACB_RX_FRMLEN_MASK;
	if (bp->caps & MACB_CAPS_JUMBO)
		bp->rx_frm_len_mask = MACB_RX_JFRMLEN_MASK;

	FUNC5(bp);

	/* Initialize TX and RX buffers */
	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		FUNC13(queue, RBQP, FUNC4(queue->rx_ring_dma));
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
		if (bp->hw_dma_cap & HW_DMA_CAP_64B)
			queue_writel(queue, RBQPH, upper_32_bits(queue->rx_ring_dma));
#endif
		FUNC13(queue, TBQP, FUNC4(queue->tx_ring_dma));
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
		if (bp->hw_dma_cap & HW_DMA_CAP_64B)
			queue_writel(queue, TBQPH, upper_32_bits(queue->tx_ring_dma));
#endif

		/* Enable interrupts */
		FUNC13(queue, IER,
			     bp->rx_intr_mask |
			     MACB_TX_INT_FLAGS |
			     FUNC2(HRESP));
	}

	/* Enable TX and RX */
	FUNC12(bp, NCR, FUNC9(bp, NCR) | FUNC2(RE) | FUNC2(TE));
}