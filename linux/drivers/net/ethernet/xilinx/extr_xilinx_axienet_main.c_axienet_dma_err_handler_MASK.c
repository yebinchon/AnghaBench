#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct axienet_local {int options; size_t tx_bd_num; size_t rx_bd_num; size_t rx_bd_p; size_t tx_bd_p; scalar_t__ eth_irq; scalar_t__ rx_bd_ci; scalar_t__ tx_bd_tail; scalar_t__ tx_bd_ci; struct axidma_bd* rx_bd_v; struct axidma_bd* tx_bd_v; TYPE_1__* mii_bus; struct net_device* ndev; } ;
struct axidma_bd {int cntrl; scalar_t__ app4; scalar_t__ app3; scalar_t__ app2; scalar_t__ app1; scalar_t__ app0; scalar_t__ status; int /*<<< orphan*/ * skb; scalar_t__ phys; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 size_t XAE_FCC_FCRX_MASK ; 
 int /*<<< orphan*/  XAE_FCC_OFFSET ; 
 int /*<<< orphan*/  XAE_IE_OFFSET ; 
 size_t XAE_INT_RECV_ERROR_MASK ; 
 size_t XAE_INT_RXRJECT_MASK ; 
 int /*<<< orphan*/  XAE_IP_OFFSET ; 
 int /*<<< orphan*/  XAE_IS_OFFSET ; 
 int XAE_OPTION_RXEN ; 
 int XAE_OPTION_TXEN ; 
 int /*<<< orphan*/  XAE_RCW1_OFFSET ; 
 size_t XAE_RCW1_RX_MASK ; 
 int XAXIDMA_BD_CTRL_LENGTH_MASK ; 
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
 int /*<<< orphan*/  FUNC0 (struct axienet_local*) ; 
 size_t FUNC1 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct axienet_local*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct axienet_local*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(unsigned long data)
{
	u32 axienet_status;
	u32 cr, i;
	struct axienet_local *lp = (struct axienet_local *) data;
	struct net_device *ndev = lp->ndev;
	struct axidma_bd *cur_p;

	FUNC9(ndev, lp->options &
			   ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));
	/* Disable the MDIO interface till Axi Ethernet Reset is completed.
	 * When we do an Axi Ethernet reset, it resets the complete core
	 * including the MDIO. MDIO must be disabled before resetting
	 * and re-enabled afterwards.
	 * Hold MDIO bus lock to avoid MDIO accesses during the reset.
	 */
	FUNC12(&lp->mii_bus->mdio_lock);
	FUNC5(lp);
	FUNC0(lp);
	FUNC6(lp);
	FUNC13(&lp->mii_bus->mdio_lock);

	for (i = 0; i < lp->tx_bd_num; i++) {
		cur_p = &lp->tx_bd_v[i];
		if (cur_p->phys)
			FUNC11(ndev->dev.parent, cur_p->phys,
					 (cur_p->cntrl &
					  XAXIDMA_BD_CTRL_LENGTH_MASK),
					 DMA_TO_DEVICE);
		if (cur_p->skb)
			FUNC10(cur_p->skb);
		cur_p->phys = 0;
		cur_p->cntrl = 0;
		cur_p->status = 0;
		cur_p->app0 = 0;
		cur_p->app1 = 0;
		cur_p->app2 = 0;
		cur_p->app3 = 0;
		cur_p->app4 = 0;
		cur_p->skb = NULL;
	}

	for (i = 0; i < lp->rx_bd_num; i++) {
		cur_p = &lp->rx_bd_v[i];
		cur_p->status = 0;
		cur_p->app0 = 0;
		cur_p->app1 = 0;
		cur_p->app2 = 0;
		cur_p->app3 = 0;
		cur_p->app4 = 0;
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
	FUNC2(lp, XAXIDMA_RX_CR_OFFSET, cr);

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
	FUNC2(lp, XAXIDMA_TX_CR_OFFSET, cr);

	/* Populate the tail pointer and bring the Rx Axi DMA engine out of
	 * halted state. This will make the Rx side ready for reception.
	 */
	FUNC2(lp, XAXIDMA_RX_CDESC_OFFSET, lp->rx_bd_p);
	cr = FUNC1(lp, XAXIDMA_RX_CR_OFFSET);
	FUNC2(lp, XAXIDMA_RX_CR_OFFSET,
			  cr | XAXIDMA_CR_RUNSTOP_MASK);
	FUNC2(lp, XAXIDMA_RX_TDESC_OFFSET, lp->rx_bd_p +
			  (sizeof(*lp->rx_bd_v) * (lp->rx_bd_num - 1)));

	/* Write to the RS (Run-stop) bit in the Tx channel control register.
	 * Tx channel is now ready to run. But only after we write to the
	 * tail pointer register that the Tx channel will start transmitting
	 */
	FUNC2(lp, XAXIDMA_TX_CDESC_OFFSET, lp->tx_bd_p);
	cr = FUNC1(lp, XAXIDMA_TX_CR_OFFSET);
	FUNC2(lp, XAXIDMA_TX_CR_OFFSET,
			  cr | XAXIDMA_CR_RUNSTOP_MASK);

	axienet_status = FUNC3(lp, XAE_RCW1_OFFSET);
	axienet_status &= ~XAE_RCW1_RX_MASK;
	FUNC4(lp, XAE_RCW1_OFFSET, axienet_status);

	axienet_status = FUNC3(lp, XAE_IP_OFFSET);
	if (axienet_status & XAE_INT_RXRJECT_MASK)
		FUNC4(lp, XAE_IS_OFFSET, XAE_INT_RXRJECT_MASK);
	FUNC4(lp, XAE_IE_OFFSET, lp->eth_irq > 0 ?
		    XAE_INT_RECV_ERROR_MASK : 0);
	FUNC4(lp, XAE_FCC_OFFSET, XAE_FCC_FCRX_MASK);

	/* Sync default options with HW but leave receiver and
	 * transmitter disabled.
	 */
	FUNC9(ndev, lp->options &
			   ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));
	FUNC7(ndev, NULL);
	FUNC8(ndev);
	FUNC9(ndev, lp->options);
}