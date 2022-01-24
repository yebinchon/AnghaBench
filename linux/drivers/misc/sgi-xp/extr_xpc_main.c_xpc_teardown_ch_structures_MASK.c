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
struct xpc_partition {scalar_t__ setup_state; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * remote_openclose_args; int /*<<< orphan*/ * remote_openclose_args_base; int /*<<< orphan*/  references; int /*<<< orphan*/  teardown_wq; int /*<<< orphan*/  nchannels_active; int /*<<< orphan*/  nchannels_engaged; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown_ch_structures ) (struct xpc_partition*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XPC_P_SS_SETUP ; 
 scalar_t__ XPC_P_SS_TORNDOWN ; 
 scalar_t__ XPC_P_SS_WTEARDOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ xpc_arch_ops ; 

__attribute__((used)) static void
FUNC5(struct xpc_partition *part)
{
	FUNC0(FUNC1(&part->nchannels_engaged) != 0);
	FUNC0(FUNC1(&part->nchannels_active) != 0);

	/*
	 * Make this partition inaccessible to local processes by marking it
	 * as no longer setup. Then wait before proceeding with the teardown
	 * until all existing references cease.
	 */
	FUNC0(part->setup_state != XPC_P_SS_SETUP);
	part->setup_state = XPC_P_SS_WTEARDOWN;

	FUNC4(part->teardown_wq, (FUNC1(&part->references) == 0));

	/* now we can begin tearing down the infrastructure */

	xpc_arch_ops.teardown_ch_structures(part);

	FUNC2(part->remote_openclose_args_base);
	part->remote_openclose_args = NULL;
	FUNC2(part->channels);
	part->channels = NULL;

	part->setup_state = XPC_P_SS_TORNDOWN;
}