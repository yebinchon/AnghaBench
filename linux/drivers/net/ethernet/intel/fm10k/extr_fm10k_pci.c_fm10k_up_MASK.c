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
struct TYPE_3__ {int /*<<< orphan*/  (* update_int_moderator ) (struct fm10k_hw*) ;int /*<<< orphan*/  (* start_hw ) (struct fm10k_hw*) ;} ;
struct TYPE_4__ {int get_host_state; TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int /*<<< orphan*/  service_timer; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; struct fm10k_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  __FM10K_DOWN ; 
 int /*<<< orphan*/  __FM10K_UPDATING_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_hw*) ; 

void FUNC9(struct fm10k_intfc *interface)
{
	struct fm10k_hw *hw = &interface->hw;

	/* Enable Tx/Rx DMA */
	hw->mac.ops.start_hw(hw);

	/* configure Tx descriptor rings */
	FUNC2(interface);

	/* configure Rx descriptor rings */
	FUNC1(interface);

	/* configure interrupts */
	hw->mac.ops.update_int_moderator(hw);

	/* enable statistics capture again */
	FUNC0(__FM10K_UPDATING_STATS, interface->state);

	/* clear down bit to indicate we are ready to go */
	FUNC0(__FM10K_DOWN, interface->state);

	/* enable polling cleanups */
	FUNC3(interface);

	/* re-establish Rx filters */
	FUNC4(interface);

	/* enable transmits */
	FUNC6(interface->netdev);

	/* kick off the service timer now */
	hw->mac.get_host_state = true;
	FUNC5(&interface->service_timer, jiffies);
}