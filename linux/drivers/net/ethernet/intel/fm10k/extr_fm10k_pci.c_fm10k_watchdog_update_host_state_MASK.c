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
struct TYPE_3__ {scalar_t__ (* get_host_state ) (struct fm10k_hw*,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int host_ready; int /*<<< orphan*/  flags; int /*<<< orphan*/  last_reset; int /*<<< orphan*/  state; int /*<<< orphan*/  link_down_event; struct fm10k_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_FLAG_RESET_REQUESTED ; 
 int /*<<< orphan*/  FM10K_FLAG_SWPRI_CONFIG ; 
 int /*<<< orphan*/  __FM10K_LINK_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fm10k_hw*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct fm10k_intfc *interface)
{
	struct fm10k_hw *hw = &interface->hw;
	s32 err;

	if (FUNC8(__FM10K_LINK_DOWN, interface->state)) {
		interface->host_ready = false;
		if (FUNC9(interface->link_down_event))
			return;
		FUNC0(__FM10K_LINK_DOWN, interface->state);
	}

	if (FUNC8(FM10K_FLAG_SWPRI_CONFIG, interface->flags)) {
		if (FUNC4()) {
			FUNC1(interface);
			FUNC5();
		}
	}

	/* lock the mailbox for transmit and receive */
	FUNC2(interface);

	err = hw->mac.ops.get_host_state(hw, &interface->host_ready);
	if (err && FUNC10(interface->last_reset))
		FUNC6(FM10K_FLAG_RESET_REQUESTED, interface->flags);

	/* free the lock */
	FUNC3(interface);
}