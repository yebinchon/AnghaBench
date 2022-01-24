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
struct altera_tse_private {int /*<<< orphan*/  rx_dma_csr; int /*<<< orphan*/  tx_dma_csr; int /*<<< orphan*/  rxdescmem; int /*<<< orphan*/  rx_dma_desc; int /*<<< orphan*/  txdescmem; int /*<<< orphan*/  tx_dma_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGDMA_CTRLREG_RESET ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct altera_tse_private *priv)
{
	/* Initialize descriptor memory to 0 */
	FUNC1(priv->tx_dma_desc, 0, priv->txdescmem);
	FUNC1(priv->rx_dma_desc, 0, priv->rxdescmem);

	FUNC0(SGDMA_CTRLREG_RESET, priv->tx_dma_csr, FUNC2(control));
	FUNC0(0, priv->tx_dma_csr, FUNC2(control));

	FUNC0(SGDMA_CTRLREG_RESET, priv->rx_dma_csr, FUNC2(control));
	FUNC0(0, priv->rx_dma_csr, FUNC2(control));
}