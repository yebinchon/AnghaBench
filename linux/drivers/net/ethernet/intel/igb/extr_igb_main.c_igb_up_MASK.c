#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  eee_disable; } ;
struct TYPE_7__ {TYPE_2__ _82575; } ;
struct TYPE_5__ {int get_link_status; } ;
struct e1000_hw {TYPE_3__ dev_spec; TYPE_1__ mac; } ;
struct igb_adapter {int num_q_vectors; int flags; int eee_advert; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  netdev; scalar_t__ vfs_allocated_count; TYPE_4__** q_vector; int /*<<< orphan*/  state; struct e1000_hw hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int /*<<< orphan*/  E1000_CTRL_EXT_PFRSTD ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_TSICR ; 
 int IGB_FLAG_EEE ; 
 int IGB_FLAG_HAS_MSIX ; 
 int MDIO_EEE_1000T ; 
 int MDIO_EEE_100TX ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	int i;

	/* hardware has been reset, we need to reload some things */
	FUNC2(adapter);

	FUNC0(__IGB_DOWN, &adapter->state);

	for (i = 0; i < adapter->num_q_vectors; i++)
		FUNC5(&(adapter->q_vector[i]->napi));

	if (adapter->flags & IGB_FLAG_HAS_MSIX)
		FUNC3(adapter);
	else
		FUNC1(adapter->q_vector[0], 0);

	/* Clear any pending interrupts. */
	FUNC7(E1000_TSICR);
	FUNC7(E1000_ICR);
	FUNC4(adapter);

	/* notify VFs that reset has been completed */
	if (adapter->vfs_allocated_count) {
		u32 reg_data = FUNC7(E1000_CTRL_EXT);

		reg_data |= E1000_CTRL_EXT_PFRSTD;
		FUNC9(E1000_CTRL_EXT, reg_data);
	}

	FUNC6(adapter->netdev);

	/* start the watchdog. */
	hw->mac.get_link_status = 1;
	FUNC8(&adapter->watchdog_task);

	if ((adapter->flags & IGB_FLAG_EEE) &&
	    (!hw->dev_spec._82575.eee_disable))
		adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T;

	return 0;
}