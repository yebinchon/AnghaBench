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
typedef  size_t u32 ;
struct nixge_tx_skb {int dummy; } ;
struct nixge_priv {scalar_t__ tx_bd_p; scalar_t__ rx_bd_p; scalar_t__ rx_bd_ci; scalar_t__ tx_bd_tail; scalar_t__ tx_bd_ci; struct nixge_hw_dma_bd* rx_bd_v; struct nixge_tx_skb* tx_skb; struct nixge_hw_dma_bd* tx_bd_v; } ;
struct nixge_hw_dma_bd {scalar_t__ status; scalar_t__ cntrl; } ;

/* Variables and functions */
 size_t RX_BD_NUM ; 
 size_t TX_BD_NUM ; 
 size_t XAXIDMA_COALESCE_MASK ; 
 size_t XAXIDMA_COALESCE_SHIFT ; 
 size_t XAXIDMA_CR_RUNSTOP_MASK ; 
 size_t XAXIDMA_DELAY_MASK ; 
 size_t XAXIDMA_DELAY_SHIFT ; 
 size_t XAXIDMA_DFT_RX_THRESHOLD ; 
 size_t XAXIDMA_DFT_RX_WAITBOUND ; 
 size_t XAXIDMA_DFT_TX_THRESHOLD ; 
 size_t XAXIDMA_DFT_TX_WAITBOUND ; 
 size_t XAXIDMA_IRQ_ALL_MASK ; 
 int /*<<< orphan*/  XAXIDMA_RX_CDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_TDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct nixge_priv*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct nixge_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nixge_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nixge_priv*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nixge_hw_dma_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nixge_hw_dma_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nixge_priv*,struct nixge_tx_skb*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct nixge_priv *lp = (struct nixge_priv *)data;
	struct nixge_hw_dma_bd *cur_p;
	struct nixge_tx_skb *tx_skb;
	u32 cr, i;

	FUNC0(lp, XAXIDMA_TX_CR_OFFSET);
	FUNC0(lp, XAXIDMA_RX_CR_OFFSET);

	for (i = 0; i < TX_BD_NUM; i++) {
		cur_p = &lp->tx_bd_v[i];
		tx_skb = &lp->tx_skb[i];
		FUNC6(lp, tx_skb);

		FUNC5(cur_p, 0);
		cur_p->cntrl = 0;
		cur_p->status = 0;
		FUNC4(cur_p, 0);
	}

	for (i = 0; i < RX_BD_NUM; i++) {
		cur_p = &lp->rx_bd_v[i];
		cur_p->status = 0;
	}

	lp->tx_bd_ci = 0;
	lp->tx_bd_tail = 0;
	lp->rx_bd_ci = 0;

	/* Start updating the Rx channel control register */
	cr = FUNC1(lp, XAXIDMA_RX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
	      (XAXIDMA_DFT_RX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = ((cr & ~XAXIDMA_DELAY_MASK) |
	      (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Finally write to the Rx channel control register */
	FUNC3(lp, XAXIDMA_RX_CR_OFFSET, cr);

	/* Start updating the Tx channel control register */
	cr = FUNC1(lp, XAXIDMA_TX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
	      (XAXIDMA_DFT_TX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = (((cr & ~XAXIDMA_DELAY_MASK)) |
	      (XAXIDMA_DFT_TX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Finally write to the Tx channel control register */
	FUNC3(lp, XAXIDMA_TX_CR_OFFSET, cr);

	/* Populate the tail pointer and bring the Rx Axi DMA engine out of
	 * halted state. This will make the Rx side ready for reception.
	 */
	FUNC2(lp, XAXIDMA_RX_CDESC_OFFSET, lp->rx_bd_p);
	cr = FUNC1(lp, XAXIDMA_RX_CR_OFFSET);
	FUNC3(lp, XAXIDMA_RX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);
	FUNC2(lp, XAXIDMA_RX_TDESC_OFFSET, lp->rx_bd_p +
			    (sizeof(*lp->rx_bd_v) * (RX_BD_NUM - 1)));

	/* Write to the RS (Run-stop) bit in the Tx channel control register.
	 * Tx channel is now ready to run. But only after we write to the
	 * tail pointer register that the Tx channel will start transmitting
	 */
	FUNC2(lp, XAXIDMA_TX_CDESC_OFFSET, lp->tx_bd_p);
	cr = FUNC1(lp, XAXIDMA_TX_CR_OFFSET);
	FUNC3(lp, XAXIDMA_TX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);
}