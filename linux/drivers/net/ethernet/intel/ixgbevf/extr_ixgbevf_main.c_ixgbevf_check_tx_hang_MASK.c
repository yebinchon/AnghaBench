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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_done_old; } ;
struct ixgbevf_ring {TYPE_1__ tx_stats; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_HANG_CHECK_ARMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_ring*) ; 
 scalar_t__ FUNC2 (struct ixgbevf_ring*) ; 
 scalar_t__ FUNC3 (struct ixgbevf_ring*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(struct ixgbevf_ring *tx_ring)
{
	u32 tx_done = FUNC2(tx_ring);
	u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
	u32 tx_pending = FUNC3(tx_ring);

	FUNC1(tx_ring);

	/* Check for a hung queue, but be thorough. This verifies
	 * that a transmit has been completed since the previous
	 * check AND there is at least one packet pending. The
	 * ARMED bit is set to indicate a potential hang.
	 */
	if ((tx_done_old == tx_done) && tx_pending) {
		/* make sure it is true for two checks in a row */
		return FUNC4(__IXGBEVF_HANG_CHECK_ARMED,
					&tx_ring->state);
	}
	/* reset the countdown */
	FUNC0(__IXGBEVF_HANG_CHECK_ARMED, &tx_ring->state);

	/* update completed stats and continue */
	tx_ring->tx_stats.tx_done_old = tx_done;

	return false;
}