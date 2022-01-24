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
struct net_device {int /*<<< orphan*/  dev; } ;
struct axienet_local {int options; scalar_t__ eth_irq; scalar_t__ tx_irq; scalar_t__ rx_irq; int /*<<< orphan*/  dma_err_tasklet; TYPE_1__* mii_bus; int /*<<< orphan*/  phylink; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XAE_IE_OFFSET ; 
 int XAE_OPTION_RXEN ; 
 int XAE_OPTION_TXEN ; 
 int XAXIDMA_CR_RUNSTOP_MASK ; 
 int XAXIDMA_IRQ_ALL_MASK ; 
 int /*<<< orphan*/  XAXIDMA_RX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_SR_OFFSET ; 
 int XAXIDMA_SR_HALT_MASK ; 
 int /*<<< orphan*/  XAXIDMA_TX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_SR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct axienet_local*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct axienet_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct axienet_local* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct net_device *ndev)
{
	u32 cr, sr;
	int count;
	struct axienet_local *lp = FUNC13(ndev);

	FUNC8(&ndev->dev, "axienet_close()\n");

	FUNC15(lp->phylink);
	FUNC14(lp->phylink);

	FUNC7(ndev, lp->options &
			   ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));

	cr = FUNC2(lp, XAXIDMA_RX_CR_OFFSET);
	cr &= ~(XAXIDMA_CR_RUNSTOP_MASK | XAXIDMA_IRQ_ALL_MASK);
	FUNC3(lp, XAXIDMA_RX_CR_OFFSET, cr);

	cr = FUNC2(lp, XAXIDMA_TX_CR_OFFSET);
	cr &= ~(XAXIDMA_CR_RUNSTOP_MASK | XAXIDMA_IRQ_ALL_MASK);
	FUNC3(lp, XAXIDMA_TX_CR_OFFSET, cr);

	FUNC4(lp, XAE_IE_OFFSET, 0);

	/* Give DMAs a chance to halt gracefully */
	sr = FUNC2(lp, XAXIDMA_RX_SR_OFFSET);
	for (count = 0; !(sr & XAXIDMA_SR_HALT_MASK) && count < 5; ++count) {
		FUNC10(20);
		sr = FUNC2(lp, XAXIDMA_RX_SR_OFFSET);
	}

	sr = FUNC2(lp, XAXIDMA_TX_SR_OFFSET);
	for (count = 0; !(sr & XAXIDMA_SR_HALT_MASK) && count < 5; ++count) {
		FUNC10(20);
		sr = FUNC2(lp, XAXIDMA_TX_SR_OFFSET);
	}

	/* Do a reset to ensure DMA is really stopped */
	FUNC11(&lp->mii_bus->mdio_lock);
	FUNC5(lp);
	FUNC0(lp);
	FUNC6(lp);
	FUNC12(&lp->mii_bus->mdio_lock);

	FUNC16(&lp->dma_err_tasklet);

	if (lp->eth_irq > 0)
		FUNC9(lp->eth_irq, ndev);
	FUNC9(lp->tx_irq, ndev);
	FUNC9(lp->rx_irq, ndev);

	FUNC1(ndev);
	return 0;
}