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
struct bgmac_dma_ring {scalar_t__ mmio_base; } ;
struct bgmac {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BGMAC_DMA_RX_CTL ; 
 int /*<<< orphan*/  BGMAC_DMA_RX_STAT ; 
 scalar_t__ BGMAC_DMA_RX_STATUS ; 
 int /*<<< orphan*/  BGMAC_DMA_RX_STAT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bgmac *bgmac, struct bgmac_dma_ring *ring)
{
	if (!ring->mmio_base)
		return;

	FUNC1(bgmac, ring->mmio_base + BGMAC_DMA_RX_CTL, 0);
	if (!FUNC0(bgmac,
			      ring->mmio_base + BGMAC_DMA_RX_STATUS,
			      BGMAC_DMA_RX_STAT, BGMAC_DMA_RX_STAT_DISABLED,
			      10000))
		FUNC2(bgmac->dev, "Reset of ring 0x%X RX failed\n",
			ring->mmio_base);
}