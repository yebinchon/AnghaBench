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
struct iwl_rf_reset {scalar_t__ last_reset_jiffies; int /*<<< orphan*/  reset_success_count; int /*<<< orphan*/  reset_reject_count; int /*<<< orphan*/  reset_request_count; } ;
struct iwl_priv {struct iwl_rf_reset rf_reset; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_DELAY_NEXT_FORCE_RF_RESET ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

int FUNC6(struct iwl_priv *priv, bool external)
{
	struct iwl_rf_reset *rf_reset;

	if (FUNC4(STATUS_EXIT_PENDING, &priv->status))
		return -EAGAIN;

	if (!FUNC3(priv)) {
		FUNC1(priv, "force reset rejected: not associated\n");
		return -ENOLINK;
	}

	rf_reset = &priv->rf_reset;
	rf_reset->reset_request_count++;
	if (!external && rf_reset->last_reset_jiffies &&
	    FUNC5(rf_reset->last_reset_jiffies +
		       IWL_DELAY_NEXT_FORCE_RF_RESET, jiffies)) {
		FUNC0(priv, "RF reset rejected\n");
		rf_reset->reset_reject_count++;
		return -EAGAIN;
	}
	rf_reset->reset_success_count++;
	rf_reset->last_reset_jiffies = jiffies;

	/*
	 * There is no easy and better way to force reset the radio,
	 * the only known method is switching channel which will force to
	 * reset and tune the radio.
	 * Use internal short scan (single channel) operation to should
	 * achieve this objective.
	 * Driver should reset the radio when number of consecutive missed
	 * beacon, or any other uCode error condition detected.
	 */
	FUNC0(priv, "perform radio reset.\n");
	FUNC2(priv);
	return 0;
}