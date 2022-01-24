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
struct TYPE_3__ {int get_link_status; } ;
struct igc_hw {TYPE_1__ mac; } ;
struct igc_adapter {int num_q_vectors; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  netdev; TYPE_2__** q_vector; scalar_t__ msix_entries; int /*<<< orphan*/  state; struct igc_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_ICR ; 
 int /*<<< orphan*/  __IGC_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct igc_adapter *adapter)
{
	struct igc_hw *hw = &adapter->hw;
	int i = 0;

	/* hardware has been reset, we need to reload some things */
	FUNC2(adapter);

	FUNC0(__IGC_DOWN, &adapter->state);

	for (i = 0; i < adapter->num_q_vectors; i++)
		FUNC5(&adapter->q_vector[i]->napi);

	if (adapter->msix_entries)
		FUNC3(adapter);
	else
		FUNC1(adapter->q_vector[0], 0);

	/* Clear any pending interrupts. */
	FUNC7(IGC_ICR);
	FUNC4(adapter);

	FUNC6(adapter->netdev);

	/* start the watchdog. */
	hw->mac.get_link_status = 1;
	FUNC8(&adapter->watchdog_task);
}