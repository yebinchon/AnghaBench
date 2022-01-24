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
struct b43_dma {int parity; void* rx_ring; void* tx_ring_mcast; void* tx_ring_AC_VO; void* tx_ring_AC_VI; void* tx_ring_AC_BE; void* tx_ring_AC_BK; int /*<<< orphan*/  translation_in_low; int /*<<< orphan*/  translation; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__* dev; struct b43_dma dma; } ;
typedef  enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
struct TYPE_2__ {int bus_type; int core_rev; int /*<<< orphan*/  sdev; int /*<<< orphan*/  bdev; int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
#define  B43_BUS_BCMA 129 
#define  B43_BUS_SSB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 
 int FUNC3 (struct b43_wldev*) ; 
 void* FUNC4 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_dma*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_ring_AC_BE ; 
 int /*<<< orphan*/  tx_ring_AC_BK ; 
 int /*<<< orphan*/  tx_ring_AC_VI ; 
 int /*<<< orphan*/  tx_ring_AC_VO ; 
 int /*<<< orphan*/  tx_ring_mcast ; 

int FUNC11(struct b43_wldev *dev)
{
	struct b43_dma *dma = &dev->dma;
	enum b43_dmatype type = FUNC3(dev);
	int err;

	err = FUNC9(dev->dev->dma_dev, FUNC1(type));
	if (err) {
		FUNC6(dev->wl, "The machine/kernel does not support "
		       "the required %u-bit DMA mask\n", type);
		return err;
	}

	switch (dev->dev->bus_type) {
#ifdef CONFIG_B43_BCMA
	case B43_BUS_BCMA:
		dma->translation = bcma_core_dma_translation(dev->dev->bdev);
		break;
#endif
#ifdef CONFIG_B43_SSB
	case B43_BUS_SSB:
		dma->translation = ssb_dma_translation(dev->dev->sdev);
		break;
#endif
	}
	dma->translation_in_low = FUNC2(dev, type);

	dma->parity = true;
#ifdef CONFIG_B43_BCMA
	/* TODO: find out which SSB devices need disabling parity */
	if (dev->dev->bus_type == B43_BUS_BCMA)
		dma->parity = false;
#endif

	err = -ENOMEM;
	/* setup TX DMA channels. */
	dma->tx_ring_AC_BK = FUNC4(dev, 0, 1, type);
	if (!dma->tx_ring_AC_BK)
		goto out;

	dma->tx_ring_AC_BE = FUNC4(dev, 1, 1, type);
	if (!dma->tx_ring_AC_BE)
		goto err_destroy_bk;

	dma->tx_ring_AC_VI = FUNC4(dev, 2, 1, type);
	if (!dma->tx_ring_AC_VI)
		goto err_destroy_be;

	dma->tx_ring_AC_VO = FUNC4(dev, 3, 1, type);
	if (!dma->tx_ring_AC_VO)
		goto err_destroy_vi;

	dma->tx_ring_mcast = FUNC4(dev, 4, 1, type);
	if (!dma->tx_ring_mcast)
		goto err_destroy_vo;

	/* setup RX DMA channel. */
	dma->rx_ring = FUNC4(dev, 0, 0, type);
	if (!dma->rx_ring)
		goto err_destroy_mcast;

	/* No support for the TX status DMA ring. */
	FUNC0(dev->dev->core_rev < 5);

	FUNC5(dev->wl, "%u-bit DMA initialized\n",
	       (unsigned int)type);
	err = 0;
out:
	return err;

err_destroy_mcast:
	FUNC8(dma, tx_ring_mcast);
err_destroy_vo:
	FUNC8(dma, tx_ring_AC_VO);
err_destroy_vi:
	FUNC8(dma, tx_ring_AC_VI);
err_destroy_be:
	FUNC8(dma, tx_ring_AC_BE);
err_destroy_bk:
	FUNC8(dma, tx_ring_AC_BK);
	return err;
}