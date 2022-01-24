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
struct il_force_reset {scalar_t__ last_force_reset_jiffies; int /*<<< orphan*/  reset_success_count; int /*<<< orphan*/  reset_reject_count; scalar_t__ reset_duration; int /*<<< orphan*/  reset_request_count; } ;
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; TYPE_2__* cfg; struct il_force_reset force_reset; } ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int /*<<< orphan*/  restart_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  S_FW_ERROR ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct il_priv *il, bool external)
{
	struct il_force_reset *force_reset;

	if (FUNC5(S_EXIT_PENDING, &il->status))
		return -EINVAL;

	force_reset = &il->force_reset;
	force_reset->reset_request_count++;
	if (!external) {
		if (force_reset->last_force_reset_jiffies &&
		    FUNC6(force_reset->last_force_reset_jiffies +
			       force_reset->reset_duration, jiffies)) {
			FUNC0("force reset rejected\n");
			force_reset->reset_reject_count++;
			return -EAGAIN;
		}
	}
	force_reset->reset_success_count++;
	force_reset->last_force_reset_jiffies = jiffies;

	/*
	 * if the request is from external(ex: debugfs),
	 * then always perform the request in regardless the module
	 * parameter setting
	 * if the request is from internal (uCode error or driver
	 * detect failure), then fw_restart module parameter
	 * need to be check before performing firmware reload
	 */

	if (!external && !il->cfg->mod_params->restart_fw) {
		FUNC0("Cancel firmware reload based on "
		       "module parameter setting\n");
		return 0;
	}

	FUNC1("On demand firmware reload\n");

	/* Set the FW error flag -- cleared on il_down */
	FUNC4(S_FW_ERROR, &il->status);
	FUNC7(&il->wait_command_queue);
	/*
	 * Keep the restart process from trying to send host
	 * commands by clearing the INIT status bit
	 */
	FUNC2(S_READY, &il->status);
	FUNC3(il->workqueue, &il->restart);

	return 0;
}