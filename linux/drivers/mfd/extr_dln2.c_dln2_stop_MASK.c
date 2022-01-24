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
struct dln2_rx_context {int /*<<< orphan*/  done; scalar_t__ in_use; } ;
struct dln2_mod_rx_slots {int /*<<< orphan*/  lock; struct dln2_rx_context* slots; } ;
struct dln2_dev {int disconnect; int /*<<< orphan*/  active_transfers; int /*<<< orphan*/  disconnect_wq; struct dln2_mod_rx_slots* mod_rx_slots; int /*<<< orphan*/  disconnect_lock; } ;

/* Variables and functions */
 int DLN2_HANDLES ; 
 int DLN2_MAX_RX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dln2_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct dln2_dev *dln2)
{
	int i, j;

	/* don't allow starting new transfers */
	FUNC2(&dln2->disconnect_lock);
	dln2->disconnect = true;
	FUNC4(&dln2->disconnect_lock);

	/* cancel in progress transfers */
	for (i = 0; i < DLN2_HANDLES; i++) {
		struct dln2_mod_rx_slots *rxs = &dln2->mod_rx_slots[i];
		unsigned long flags;

		FUNC3(&rxs->lock, flags);

		/* cancel all response waiters */
		for (j = 0; j < DLN2_MAX_RX_SLOTS; j++) {
			struct dln2_rx_context *rxc = &rxs->slots[j];

			if (rxc->in_use)
				FUNC0(&rxc->done);
		}

		FUNC5(&rxs->lock, flags);
	}

	/* wait for transfers to end */
	FUNC6(dln2->disconnect_wq, !dln2->active_transfers);

	FUNC1(dln2);
}