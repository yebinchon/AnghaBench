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
struct fm10k_intfc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_timeout_count; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_FLAG_RESET_REQUESTED ; 
 int /*<<< orphan*/  __FM10K_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct fm10k_intfc *interface)
{
	/* Do the reset outside of interrupt context */
	if (!FUNC2(__FM10K_DOWN, interface->state)) {
		interface->tx_timeout_count++;
		FUNC1(FM10K_FLAG_RESET_REQUESTED, interface->flags);
		FUNC0(interface);
	}
}