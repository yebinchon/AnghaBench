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
struct TYPE_2__ {scalar_t__ ring; } ;
struct igc_q_vector {int /*<<< orphan*/  eims_value; TYPE_1__ rx; struct igc_adapter* adapter; } ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int rx_itr_setting; int tx_itr_setting; int num_q_vectors; scalar_t__ msix_entries; int /*<<< orphan*/  state; struct igc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_EIMS ; 
 int /*<<< orphan*/  __IGC_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_q_vector*) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_q_vector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct igc_q_vector *q_vector)
{
	struct igc_adapter *adapter = q_vector->adapter;
	struct igc_hw *hw = &adapter->hw;

	if ((q_vector->rx.ring && (adapter->rx_itr_setting & 3)) ||
	    (!q_vector->rx.ring && (adapter->tx_itr_setting & 3))) {
		if (adapter->num_q_vectors == 1)
			FUNC1(q_vector);
		else
			FUNC2(q_vector);
	}

	if (!FUNC3(__IGC_DOWN, &adapter->state)) {
		if (adapter->msix_entries)
			FUNC4(IGC_EIMS, q_vector->eims_value);
		else
			FUNC0(adapter);
	}
}