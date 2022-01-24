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
struct altera_tse_private {int /*<<< orphan*/  tx_dma_csr; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_dma_csr; } ;

/* Variables and functions */
 int ALTERA_TSE_SW_RESET_WATCHDOG_CNTR ; 
 int /*<<< orphan*/  MSGDMA_CSR_CTL_RESET ; 
 int /*<<< orphan*/  MSGDMA_CSR_STAT_MASK ; 
 int /*<<< orphan*/  MSGDMA_CSR_STAT_RESETTING ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_tse_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  status ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct altera_tse_private *priv)
{
	int counter;

	/* Reset Rx mSGDMA */
	FUNC0(MSGDMA_CSR_STAT_MASK, priv->rx_dma_csr,
		FUNC1(status));
	FUNC0(MSGDMA_CSR_CTL_RESET, priv->rx_dma_csr,
		FUNC1(control));

	counter = 0;
	while (counter++ < ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
		if (FUNC3(priv->rx_dma_csr, FUNC1(status),
				     MSGDMA_CSR_STAT_RESETTING))
			break;
		FUNC4(1);
	}

	if (counter >= ALTERA_TSE_SW_RESET_WATCHDOG_CNTR)
		FUNC2(priv, drv, priv->dev,
			   "TSE Rx mSGDMA resetting bit never cleared!\n");

	/* clear all status bits */
	FUNC0(MSGDMA_CSR_STAT_MASK, priv->rx_dma_csr, FUNC1(status));

	/* Reset Tx mSGDMA */
	FUNC0(MSGDMA_CSR_STAT_MASK, priv->tx_dma_csr,
		FUNC1(status));

	FUNC0(MSGDMA_CSR_CTL_RESET, priv->tx_dma_csr,
		FUNC1(control));

	counter = 0;
	while (counter++ < ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
		if (FUNC3(priv->tx_dma_csr, FUNC1(status),
				     MSGDMA_CSR_STAT_RESETTING))
			break;
		FUNC4(1);
	}

	if (counter >= ALTERA_TSE_SW_RESET_WATCHDOG_CNTR)
		FUNC2(priv, drv, priv->dev,
			   "TSE Tx mSGDMA resetting bit never cleared!\n");

	/* clear all status bits */
	FUNC0(MSGDMA_CSR_STAT_MASK, priv->tx_dma_csr, FUNC1(status));
}