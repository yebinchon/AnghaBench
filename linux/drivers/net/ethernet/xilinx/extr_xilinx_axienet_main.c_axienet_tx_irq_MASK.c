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
typedef  unsigned int u32 ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct axienet_local {size_t tx_bd_ci; int /*<<< orphan*/  dma_err_tasklet; TYPE_1__* tx_bd_v; int /*<<< orphan*/  ndev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int XAXIDMA_IRQ_ALL_MASK ; 
 unsigned int XAXIDMA_IRQ_DELAY_MASK ; 
 unsigned int XAXIDMA_IRQ_ERROR_MASK ; 
 unsigned int XAXIDMA_IRQ_IOC_MASK ; 
 int /*<<< orphan*/  XAXIDMA_RX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_SR_OFFSET ; 
 unsigned int FUNC0 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct axienet_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *_ndev)
{
	u32 cr;
	unsigned int status;
	struct net_device *ndev = _ndev;
	struct axienet_local *lp = FUNC4(ndev);

	status = FUNC0(lp, XAXIDMA_TX_SR_OFFSET);
	if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
		FUNC1(lp, XAXIDMA_TX_SR_OFFSET, status);
		FUNC2(lp->ndev);
		goto out;
	}
	if (!(status & XAXIDMA_IRQ_ALL_MASK))
		return IRQ_NONE;
	if (status & XAXIDMA_IRQ_ERROR_MASK) {
		FUNC3(&ndev->dev, "DMA Tx error 0x%x\n", status);
		FUNC3(&ndev->dev, "Current BD is at: 0x%x\n",
			(lp->tx_bd_v[lp->tx_bd_ci]).phys);

		cr = FUNC0(lp, XAXIDMA_TX_CR_OFFSET);
		/* Disable coalesce, delay timer and error interrupts */
		cr &= (~XAXIDMA_IRQ_ALL_MASK);
		/* Write to the Tx channel control register */
		FUNC1(lp, XAXIDMA_TX_CR_OFFSET, cr);

		cr = FUNC0(lp, XAXIDMA_RX_CR_OFFSET);
		/* Disable coalesce, delay timer and error interrupts */
		cr &= (~XAXIDMA_IRQ_ALL_MASK);
		/* Write to the Rx channel control register */
		FUNC1(lp, XAXIDMA_RX_CR_OFFSET, cr);

		FUNC5(&lp->dma_err_tasklet);
		FUNC1(lp, XAXIDMA_TX_SR_OFFSET, status);
	}
out:
	return IRQ_HANDLED;
}