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
typedef  size_t u16 ;
struct dln2_rx_context {int in_use; } ;
struct dln2_mod_rx_slots {int /*<<< orphan*/  lock; int /*<<< orphan*/  bmap; struct dln2_rx_context* slots; } ;
struct dln2_dev {struct dln2_mod_rx_slots* mod_rx_slots; scalar_t__ disconnect; } ;

/* Variables and functions */
 int DLN2_MAX_RX_SLOTS ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct dln2_dev *dln2, u16 handle, int *slot)
{
	struct dln2_mod_rx_slots *rxs;
	unsigned long flags;

	if (dln2->disconnect) {
		*slot = -ENODEV;
		return true;
	}

	rxs = &dln2->mod_rx_slots[handle];

	FUNC2(&rxs->lock, flags);

	*slot = FUNC0(rxs->bmap, DLN2_MAX_RX_SLOTS);

	if (*slot < DLN2_MAX_RX_SLOTS) {
		struct dln2_rx_context *rxc = &rxs->slots[*slot];

		FUNC1(*slot, rxs->bmap);
		rxc->in_use = true;
	}

	FUNC3(&rxs->lock, flags);

	return *slot < DLN2_MAX_RX_SLOTS;
}