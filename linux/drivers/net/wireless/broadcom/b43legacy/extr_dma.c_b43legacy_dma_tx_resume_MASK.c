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
struct TYPE_2__ {int /*<<< orphan*/  tx_ring0; int /*<<< orphan*/  tx_ring1; int /*<<< orphan*/  tx_ring2; int /*<<< orphan*/  tx_ring3; int /*<<< orphan*/  tx_ring4; int /*<<< orphan*/  tx_ring5; } ;
struct b43legacy_wldev {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 

void FUNC2(struct b43legacy_wldev *dev)
{
	FUNC0(dev->dma.tx_ring5);
	FUNC0(dev->dma.tx_ring4);
	FUNC0(dev->dma.tx_ring3);
	FUNC0(dev->dma.tx_ring2);
	FUNC0(dev->dma.tx_ring1);
	FUNC0(dev->dma.tx_ring0);
	FUNC1(dev, -1, -1);
}