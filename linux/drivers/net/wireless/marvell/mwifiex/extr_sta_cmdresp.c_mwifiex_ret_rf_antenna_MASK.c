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
struct mwifiex_private {void* rx_ant; void* tx_ant; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ hw_dev_mcs_support; } ;
struct host_cmd_ds_rf_ant_siso {int /*<<< orphan*/  ant_mode; int /*<<< orphan*/  action; } ;
struct host_cmd_ds_rf_ant_mimo {int /*<<< orphan*/  rx_ant_mode; int /*<<< orphan*/  action_rx; int /*<<< orphan*/  tx_ant_mode; int /*<<< orphan*/  action_tx; } ;
struct TYPE_2__ {struct host_cmd_ds_rf_ant_siso ant_siso; struct host_cmd_ds_rf_ant_mimo ant_mimo; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ HT_STREAM_2X2 ; 
 int /*<<< orphan*/  INFO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,void*,void*,...) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
				  struct host_cmd_ds_command *resp)
{
	struct host_cmd_ds_rf_ant_mimo *ant_mimo = &resp->params.ant_mimo;
	struct host_cmd_ds_rf_ant_siso *ant_siso = &resp->params.ant_siso;
	struct mwifiex_adapter *adapter = priv->adapter;

	if (adapter->hw_dev_mcs_support == HT_STREAM_2X2) {
		priv->tx_ant = FUNC0(ant_mimo->tx_ant_mode);
		priv->rx_ant = FUNC0(ant_mimo->rx_ant_mode);
		FUNC1(adapter, INFO,
			    "RF_ANT_RESP: Tx action = 0x%x, Tx Mode = 0x%04x\t"
			    "Rx action = 0x%x, Rx Mode = 0x%04x\n",
			    FUNC0(ant_mimo->action_tx),
			    FUNC0(ant_mimo->tx_ant_mode),
			    FUNC0(ant_mimo->action_rx),
			    FUNC0(ant_mimo->rx_ant_mode));
	} else {
		priv->tx_ant = FUNC0(ant_siso->ant_mode);
		priv->rx_ant = FUNC0(ant_siso->ant_mode);
		FUNC1(adapter, INFO,
			    "RF_ANT_RESP: action = 0x%x, Mode = 0x%04x\n",
			    FUNC0(ant_siso->action),
			    FUNC0(ant_siso->ant_mode));
	}
	return 0;
}