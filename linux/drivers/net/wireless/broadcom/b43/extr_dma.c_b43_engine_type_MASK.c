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
typedef  scalar_t__ u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
typedef  enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
struct TYPE_2__ {int bus_type; int /*<<< orphan*/  sdev; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
#define  B43_BUS_BCMA 129 
#define  B43_BUS_SSB 128 
 int B43_DMA32_TXADDREXT_MASK ; 
 scalar_t__ B43_DMA32_TXCTL ; 
 int B43_DMA_30BIT ; 
 int B43_DMA_32BIT ; 
 int B43_DMA_64BIT ; 
 int /*<<< orphan*/  BCMA_IOST ; 
 int BCMA_IOST_DMA64 ; 
 int /*<<< orphan*/  SSB_TMSHIGH ; 
 int SSB_TMSHIGH_DMA64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_wldev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum b43_dmatype FUNC5(struct b43_wldev *dev)
{
	u32 tmp;
	u16 mmio_base;

	switch (dev->dev->bus_type) {
#ifdef CONFIG_B43_BCMA
	case B43_BUS_BCMA:
		tmp = bcma_aread32(dev->dev->bdev, BCMA_IOST);
		if (tmp & BCMA_IOST_DMA64)
			return B43_DMA_64BIT;
		break;
#endif
#ifdef CONFIG_B43_SSB
	case B43_BUS_SSB:
		tmp = ssb_read32(dev->dev->sdev, SSB_TMSHIGH);
		if (tmp & SSB_TMSHIGH_DMA64)
			return B43_DMA_64BIT;
		break;
#endif
	}

	mmio_base = FUNC0(0, 0);
	FUNC2(dev, mmio_base + B43_DMA32_TXCTL, B43_DMA32_TXADDREXT_MASK);
	tmp = FUNC1(dev, mmio_base + B43_DMA32_TXCTL);
	if (tmp & B43_DMA32_TXADDREXT_MASK)
		return B43_DMA_32BIT;
	return B43_DMA_30BIT;
}