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
typedef  int u32 ;
struct bgmac_dma_ring {scalar_t__ mmio_base; } ;
struct bgmac {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BGMAC_DMA_TX_CTL ; 
 int BGMAC_DMA_TX_STAT ; 
 scalar_t__ BGMAC_DMA_TX_STATUS ; 
 int BGMAC_DMA_TX_STAT_DISABLED ; 
 int BGMAC_DMA_TX_STAT_IDLEWAIT ; 
 int BGMAC_DMA_TX_STAT_STOPPED ; 
 int /*<<< orphan*/  BGMAC_DMA_TX_SUSPEND ; 
 int FUNC0 (struct bgmac*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct bgmac *bgmac, struct bgmac_dma_ring *ring)
{
	u32 val;
	int i;

	if (!ring->mmio_base)
		return;

	/* Suspend DMA TX ring first.
	 * bgmac_wait_value doesn't support waiting for any of few values, so
	 * implement whole loop here.
	 */
	FUNC2(bgmac, ring->mmio_base + BGMAC_DMA_TX_CTL,
		    BGMAC_DMA_TX_SUSPEND);
	for (i = 0; i < 10000 / 10; i++) {
		val = FUNC0(bgmac, ring->mmio_base + BGMAC_DMA_TX_STATUS);
		val &= BGMAC_DMA_TX_STAT;
		if (val == BGMAC_DMA_TX_STAT_DISABLED ||
		    val == BGMAC_DMA_TX_STAT_IDLEWAIT ||
		    val == BGMAC_DMA_TX_STAT_STOPPED) {
			i = 0;
			break;
		}
		FUNC5(10);
	}
	if (i)
		FUNC3(bgmac->dev, "Timeout suspending DMA TX ring 0x%X (BGMAC_DMA_TX_STAT: 0x%08X)\n",
			ring->mmio_base, val);

	/* Remove SUSPEND bit */
	FUNC2(bgmac, ring->mmio_base + BGMAC_DMA_TX_CTL, 0);
	if (!FUNC1(bgmac,
			      ring->mmio_base + BGMAC_DMA_TX_STATUS,
			      BGMAC_DMA_TX_STAT, BGMAC_DMA_TX_STAT_DISABLED,
			      10000)) {
		FUNC4(bgmac->dev, "DMA TX ring 0x%X wasn't disabled on time, waiting additional 300us\n",
			 ring->mmio_base);
		FUNC5(300);
		val = FUNC0(bgmac, ring->mmio_base + BGMAC_DMA_TX_STATUS);
		if ((val & BGMAC_DMA_TX_STAT) != BGMAC_DMA_TX_STAT_DISABLED)
			FUNC3(bgmac->dev, "Reset of DMA TX ring 0x%X failed\n",
				ring->mmio_base);
	}
}