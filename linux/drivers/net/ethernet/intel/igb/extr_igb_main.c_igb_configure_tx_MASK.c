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
struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_tx_queues; TYPE_1__** tx_ring; struct e1000_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	int i;

	/* disable the queues */
	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC3(FUNC0(adapter->tx_ring[i]->reg_idx), 0);

	FUNC4();
	FUNC2(10000, 20000);

	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC1(adapter, adapter->tx_ring[i]);
}