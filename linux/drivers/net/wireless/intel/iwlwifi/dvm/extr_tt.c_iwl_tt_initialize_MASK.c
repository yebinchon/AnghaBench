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
struct iwl_tt_trans {int dummy; } ;
struct iwl_tt_restriction {int dummy; } ;
struct iwl_tt_mgmt {int state; int advanced_tt; struct iwl_tt_trans* restriction; struct iwl_tt_trans* transaction; int /*<<< orphan*/  ct_kill_waiting_tm; int /*<<< orphan*/  ct_kill_exit_tm; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; TYPE_1__* lib; int /*<<< orphan*/  ct_exit; int /*<<< orphan*/  ct_enter; int /*<<< orphan*/  tt_work; } ;
struct TYPE_2__ {scalar_t__ adv_thermal_throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 int IWL_TI_0 ; 
 int IWL_TI_1 ; 
 int IWL_TI_2 ; 
 int IWL_TI_CT_KILL ; 
 int IWL_TI_STATE_MAX ; 
 int /*<<< orphan*/  iwl_bg_ct_enter ; 
 int /*<<< orphan*/  iwl_bg_ct_exit ; 
 int /*<<< orphan*/  iwl_bg_tt_work ; 
 int /*<<< orphan*/  iwl_tt_check_exit_ct_kill ; 
 int /*<<< orphan*/  iwl_tt_ready_for_ct_kill ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_tt_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_tt_trans*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_tt_mgmt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * restriction_range ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tt_range_0 ; 
 int /*<<< orphan*/ * tt_range_1 ; 
 int /*<<< orphan*/ * tt_range_2 ; 
 int /*<<< orphan*/ * tt_range_3 ; 

void FUNC8(struct iwl_priv *priv)
{
	struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
	int size = sizeof(struct iwl_tt_trans) * (IWL_TI_STATE_MAX - 1);
	struct iwl_tt_trans *transaction;

	FUNC1(priv, "Initialize Thermal Throttling\n");

	FUNC6(tt, 0, sizeof(struct iwl_tt_mgmt));

	tt->state = IWL_TI_0;
	FUNC7(&priv->thermal_throttle.ct_kill_exit_tm,
		    iwl_tt_check_exit_ct_kill, 0);
	FUNC7(&priv->thermal_throttle.ct_kill_waiting_tm,
		    iwl_tt_ready_for_ct_kill, 0);
	/* setup deferred ct kill work */
	FUNC0(&priv->tt_work, iwl_bg_tt_work);
	FUNC0(&priv->ct_enter, iwl_bg_ct_enter);
	FUNC0(&priv->ct_exit, iwl_bg_ct_exit);

	if (priv->lib->adv_thermal_throttle) {
		FUNC1(priv, "Advanced Thermal Throttling\n");
		tt->restriction = FUNC3(IWL_TI_STATE_MAX,
					  sizeof(struct iwl_tt_restriction),
					  GFP_KERNEL);
		tt->transaction = FUNC3(IWL_TI_STATE_MAX *
					  (IWL_TI_STATE_MAX - 1),
					  sizeof(struct iwl_tt_trans),
					  GFP_KERNEL);
		if (!tt->restriction || !tt->transaction) {
			FUNC2(priv, "Fallback to Legacy Throttling\n");
			priv->thermal_throttle.advanced_tt = false;
			FUNC4(tt->restriction);
			tt->restriction = NULL;
			FUNC4(tt->transaction);
			tt->transaction = NULL;
		} else {
			transaction = tt->transaction +
				(IWL_TI_0 * (IWL_TI_STATE_MAX - 1));
			FUNC5(transaction, &tt_range_0[0], size);
			transaction = tt->transaction +
				(IWL_TI_1 * (IWL_TI_STATE_MAX - 1));
			FUNC5(transaction, &tt_range_1[0], size);
			transaction = tt->transaction +
				(IWL_TI_2 * (IWL_TI_STATE_MAX - 1));
			FUNC5(transaction, &tt_range_2[0], size);
			transaction = tt->transaction +
				(IWL_TI_CT_KILL * (IWL_TI_STATE_MAX - 1));
			FUNC5(transaction, &tt_range_3[0], size);
			size = sizeof(struct iwl_tt_restriction) *
				IWL_TI_STATE_MAX;
			FUNC5(tt->restriction,
				&restriction_range[0], size);
			priv->thermal_throttle.advanced_tt = true;
		}
	} else {
		FUNC1(priv, "Legacy Thermal Throttling\n");
		priv->thermal_throttle.advanced_tt = false;
	}
}