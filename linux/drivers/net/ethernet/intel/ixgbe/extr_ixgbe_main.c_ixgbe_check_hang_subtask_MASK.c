#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbe_q_vector {TYPE_2__ tx; TYPE_1__ rx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; int flags; int num_q_vectors; struct ixgbe_q_vector** q_vector; int /*<<< orphan*/ * xdp_ring; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IXGBE_EICS ; 
 int IXGBE_EICS_OTHER ; 
 int IXGBE_EICS_TCP_TIMER ; 
 int IXGBE_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_REMOVING ; 
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64 eics = 0;
	int i;

	/* If we're down, removing or resetting, just bail */
	if (FUNC5(__IXGBE_DOWN, &adapter->state) ||
	    FUNC5(__IXGBE_REMOVING, &adapter->state) ||
	    FUNC5(__IXGBE_RESETTING, &adapter->state))
		return;

	/* Force detection of hung controller */
	if (FUNC3(adapter->netdev)) {
		for (i = 0; i < adapter->num_tx_queues; i++)
			FUNC4(adapter->tx_ring[i]);
		for (i = 0; i < adapter->num_xdp_queues; i++)
			FUNC4(adapter->xdp_ring[i]);
	}

	if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
		/*
		 * for legacy and MSI interrupts don't set any bits
		 * that are enabled for EIAM, because this operation
		 * would set *both* EIMS and EICS for any bit in EIAM
		 */
		FUNC1(hw, IXGBE_EICS,
			(IXGBE_EICS_TCP_TIMER | IXGBE_EICS_OTHER));
	} else {
		/* get one bit for every active tx/rx interrupt vector */
		for (i = 0; i < adapter->num_q_vectors; i++) {
			struct ixgbe_q_vector *qv = adapter->q_vector[i];
			if (qv->rx.ring || qv->tx.ring)
				eics |= FUNC0(i);
		}
	}

	/* Cause software interrupt to ensure rings are cleaned */
	FUNC2(adapter, eics);
}