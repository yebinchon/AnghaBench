#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* wiphy; } ;
struct mwifiex_private {TYPE_2__ wdev; scalar_t__ sched_scanning; } ;
struct mwifiex_ds_hs_cfg {int is_invoke_hostcmd; } ;
struct mwifiex_adapter {int priv_num; int hs_activate_wait_q_woken; int /*<<< orphan*/  hs_activate_wait_q; int /*<<< orphan*/  work_flags; scalar_t__ hs_activated; struct mwifiex_private** priv; } ;
typedef  int /*<<< orphan*/  hscfg ;
struct TYPE_6__ {TYPE_1__* wowlan_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  nd_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  ERROR ; 
 int HZ ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_STA ; 
 int /*<<< orphan*/  MWIFIEX_IS_HS_ENABLING ; 
 int /*<<< orphan*/  MWIFIEX_SYNC_CMD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ disconnect_on_suspend ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ds_hs_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 struct mwifiex_private* FUNC5 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_ds_hs_cfg*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int) ; 

int FUNC10(struct mwifiex_adapter *adapter)
{
	struct mwifiex_ds_hs_cfg hscfg;
	struct mwifiex_private *priv;
	int i;

	if (disconnect_on_suspend) {
		for (i = 0; i < adapter->priv_num; i++) {
			priv = adapter->priv[i];
			if (priv)
				FUNC4(priv, NULL);
		}
	}

	priv = FUNC5(adapter, MWIFIEX_BSS_ROLE_STA);

	if (priv && priv->sched_scanning) {
#ifdef CONFIG_PM
		if (priv->wdev.wiphy->wowlan_config &&
		    !priv->wdev.wiphy->wowlan_config->nd_config) {
#endif
			FUNC3(adapter, CMD, "aborting bgscan!\n");
			FUNC7(priv);
			FUNC0(priv->wdev.wiphy, 0);
#ifdef CONFIG_PM
		}
#endif
	}

	if (adapter->hs_activated) {
		FUNC3(adapter, CMD,
			    "cmd: HS Already activated\n");
		return true;
	}

	adapter->hs_activate_wait_q_woken = false;

	FUNC1(&hscfg, 0, sizeof(hscfg));
	hscfg.is_invoke_hostcmd = true;

	FUNC8(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);
	FUNC2(adapter);

	if (FUNC6(FUNC5(adapter,
						   MWIFIEX_BSS_ROLE_STA),
				  HostCmd_ACT_GEN_SET, MWIFIEX_SYNC_CMD,
				  &hscfg)) {
		FUNC3(adapter, ERROR,
			    "IOCTL request HS enable failed\n");
		return false;
	}

	if (FUNC9(adapter->hs_activate_wait_q,
					     adapter->hs_activate_wait_q_woken,
					     (10 * HZ)) <= 0) {
		FUNC3(adapter, ERROR,
			    "hs_activate_wait_q terminated\n");
		return false;
	}

	return true;
}