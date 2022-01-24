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
struct altera_tse_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_dma_csr; } ;

/* Variables and functions */
 int SGDMA_STSREG_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct altera_tse_private *priv)
{
	int delay = 0;

	/* if DMA is busy, wait for current transactino to finish */
	while ((FUNC0(priv->tx_dma_csr, FUNC2(status))
		& SGDMA_STSREG_BUSY) && (delay++ < 100))
		FUNC3(1);

	if (FUNC0(priv->tx_dma_csr, FUNC2(status))
	    & SGDMA_STSREG_BUSY) {
		FUNC1(priv->dev, "timeout waiting for tx dma\n");
		return 1;
	}
	return 0;
}