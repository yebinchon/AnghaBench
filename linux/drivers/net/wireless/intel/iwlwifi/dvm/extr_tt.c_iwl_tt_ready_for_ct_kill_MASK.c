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
struct timer_list {int dummy; } ;
struct iwl_tt_mgmt {scalar_t__ state; } ;
struct iwl_priv {int /*<<< orphan*/  status; struct iwl_tt_mgmt thermal_throttle; } ;
struct TYPE_2__ {int /*<<< orphan*/  ct_kill_waiting_tm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_TI_CT_KILL ; 
 int /*<<< orphan*/  STATUS_CT_KILL ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 struct iwl_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int) ; 
 struct iwl_priv* priv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ thermal_throttle ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct iwl_priv *priv = FUNC1(priv, t,
					   thermal_throttle.ct_kill_waiting_tm);
	struct iwl_tt_mgmt *tt = &priv->thermal_throttle;

	if (FUNC4(STATUS_EXIT_PENDING, &priv->status))
		return;

	/* temperature timer expired, ready to go into CT_KILL state */
	if (tt->state != IWL_TI_CT_KILL) {
		FUNC0(priv, "entering CT_KILL state when "
				"temperature timer expired\n");
		tt->state = IWL_TI_CT_KILL;
		FUNC3(STATUS_CT_KILL, &priv->status);
		FUNC2(priv, true);
	}
}