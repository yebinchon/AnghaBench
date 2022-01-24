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
typedef  scalar_t__ u16 ;
struct mwifiex_private {int /*<<< orphan*/  min_tx_power_level; int /*<<< orphan*/  max_tx_power_level; void* tx_power_level; int /*<<< orphan*/  adapter; } ;
struct host_cmd_ds_rf_tx_pwr {int /*<<< orphan*/  min_power; int /*<<< orphan*/  max_power; int /*<<< orphan*/  cur_level; int /*<<< orphan*/  action; } ;
struct TYPE_2__ {struct host_cmd_ds_rf_tx_pwr txp; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ HostCmd_ACT_GEN_GET ; 
 int /*<<< orphan*/  INFO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
				   struct host_cmd_ds_command *resp)
{
	struct host_cmd_ds_rf_tx_pwr *txp = &resp->params.txp;
	u16 action = FUNC0(txp->action);

	priv->tx_power_level = FUNC0(txp->cur_level);

	if (action == HostCmd_ACT_GEN_GET) {
		priv->max_tx_power_level = txp->max_power;
		priv->min_tx_power_level = txp->min_power;
	}

	FUNC1(priv->adapter, INFO,
		    "Current TxPower Level=%d, Max Power=%d, Min Power=%d\n",
		    priv->tx_power_level, priv->max_tx_power_level,
		    priv->min_tx_power_level);

	return 0;
}