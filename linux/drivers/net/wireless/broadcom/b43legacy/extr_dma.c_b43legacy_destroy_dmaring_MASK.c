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
struct b43legacy_dmaring {struct b43legacy_dmaring* meta; struct b43legacy_dmaring* txhdr_cache; int /*<<< orphan*/  nr_slots; int /*<<< orphan*/  max_used_slots; scalar_t__ tx; int /*<<< orphan*/  mmio_base; scalar_t__ type; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_dmaring*) ; 

__attribute__((used)) static void FUNC5(struct b43legacy_dmaring *ring)
{
	if (!ring)
		return;

	FUNC0(ring->dev->wl, "DMA-%u 0x%04X (%s) max used slots:"
		     " %d/%d\n", (unsigned int)(ring->type), ring->mmio_base,
		     (ring->tx) ? "TX" : "RX", ring->max_used_slots,
		     ring->nr_slots);
	/* Device IRQs are disabled prior entering this function,
	 * so no need to take care of concurrency with rx handler stuff.
	 */
	FUNC1(ring);
	FUNC2(ring);
	FUNC3(ring);

	FUNC4(ring->txhdr_cache);
	FUNC4(ring->meta);
	FUNC4(ring);
}