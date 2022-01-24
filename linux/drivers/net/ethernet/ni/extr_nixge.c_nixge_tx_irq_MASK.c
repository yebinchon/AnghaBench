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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct nixge_priv {size_t tx_bd_ci; int /*<<< orphan*/  dma_err_tasklet; int /*<<< orphan*/ * tx_bd_v; int /*<<< orphan*/  ndev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  scalar_t__ dma_addr_t ;

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
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 struct nixge_priv* FUNC1 (void*) ; 
 unsigned int FUNC2 (struct nixge_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nixge_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *_ndev)
{
	struct nixge_priv *priv = FUNC1(_ndev);
	struct net_device *ndev = _ndev;
	unsigned int status;
	dma_addr_t phys;
	u32 cr;

	status = FUNC2(priv, XAXIDMA_TX_SR_OFFSET);
	if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
		FUNC3(priv, XAXIDMA_TX_SR_OFFSET, status);
		FUNC5(priv->ndev);
		goto out;
	}
	if (!(status & XAXIDMA_IRQ_ALL_MASK)) {
		FUNC0(ndev, "No interrupts asserted in Tx path\n");
		return IRQ_NONE;
	}
	if (status & XAXIDMA_IRQ_ERROR_MASK) {
		phys = FUNC4(&priv->tx_bd_v[priv->tx_bd_ci],
						phys);

		FUNC0(ndev, "DMA Tx error 0x%x\n", status);
		FUNC0(ndev, "Current BD is at: 0x%llx\n", (u64)phys);

		cr = FUNC2(priv, XAXIDMA_TX_CR_OFFSET);
		/* Disable coalesce, delay timer and error interrupts */
		cr &= (~XAXIDMA_IRQ_ALL_MASK);
		/* Write to the Tx channel control register */
		FUNC3(priv, XAXIDMA_TX_CR_OFFSET, cr);

		cr = FUNC2(priv, XAXIDMA_RX_CR_OFFSET);
		/* Disable coalesce, delay timer and error interrupts */
		cr &= (~XAXIDMA_IRQ_ALL_MASK);
		/* Write to the Rx channel control register */
		FUNC3(priv, XAXIDMA_RX_CR_OFFSET, cr);

		FUNC6(&priv->dma_err_tasklet);
		FUNC3(priv, XAXIDMA_TX_SR_OFFSET, status);
	}
out:
	return IRQ_HANDLED;
}