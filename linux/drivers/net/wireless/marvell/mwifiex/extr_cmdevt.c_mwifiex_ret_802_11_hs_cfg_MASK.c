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
typedef  scalar_t__ uint32_t ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ iface_type; scalar_t__ hs_activated; int /*<<< orphan*/  work_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  gap; int /*<<< orphan*/  gpio; int /*<<< orphan*/  conditions; } ;
struct TYPE_6__ {TYPE_2__ hs_config; } ;
struct host_cmd_ds_802_11_hs_cfg_enh {scalar_t__ action; TYPE_3__ params; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11_hs_cfg_enh opt_hs_cfg; } ;
struct host_cmd_ds_command {int /*<<< orphan*/  result; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  HS_ACTIVATE ; 
 scalar_t__ HS_CFG_CANCEL ; 
 int /*<<< orphan*/  MWIFIEX_IS_HS_CONFIGURED ; 
 scalar_t__ MWIFIEX_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct mwifiex_private *priv,
			      struct host_cmd_ds_command *resp)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct host_cmd_ds_802_11_hs_cfg_enh *phs_cfg =
		&resp->params.opt_hs_cfg;
	uint32_t conditions = FUNC2(phs_cfg->params.hs_config.conditions);

	if (phs_cfg->action == FUNC1(HS_ACTIVATE) &&
	    adapter->iface_type != MWIFIEX_USB) {
		FUNC4(priv, true);
		return 0;
	} else {
		FUNC3(adapter, CMD,
			    "cmd: CMD_RESP: HS_CFG cmd reply\t"
			    " result=%#x, conditions=0x%x gpio=0x%x gap=0x%x\n",
			    resp->result, conditions,
			    phs_cfg->params.hs_config.gpio,
			    phs_cfg->params.hs_config.gap);
	}
	if (conditions != HS_CFG_CANCEL) {
		FUNC5(MWIFIEX_IS_HS_CONFIGURED, &adapter->work_flags);
		if (adapter->iface_type == MWIFIEX_USB)
			FUNC4(priv, true);
	} else {
		FUNC0(MWIFIEX_IS_HS_CONFIGURED, &adapter->work_flags);
		if (adapter->hs_activated)
			FUNC4(priv, false);
	}

	return 0;
}