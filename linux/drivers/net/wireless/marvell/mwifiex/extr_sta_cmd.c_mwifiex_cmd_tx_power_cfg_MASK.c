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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mwifiex_types_power_group {void* length; } ;
struct host_cmd_ds_txpwr_cfg {void* action; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {struct host_cmd_ds_txpwr_cfg txp_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
#define  HostCmd_ACT_GEN_GET 129 
#define  HostCmd_ACT_GEN_SET 128 
 int HostCmd_CMD_TXPWR_CFG ; 
 int S_DS_GEN ; 
 void* FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct host_cmd_ds_txpwr_cfg*,struct host_cmd_ds_txpwr_cfg*,int) ; 

__attribute__((used)) static int FUNC3(struct host_cmd_ds_command *cmd,
				    u16 cmd_action,
				    struct host_cmd_ds_txpwr_cfg *txp)
{
	struct mwifiex_types_power_group *pg_tlv;
	struct host_cmd_ds_txpwr_cfg *cmd_txp_cfg = &cmd->params.txp_cfg;

	cmd->command = FUNC0(HostCmd_CMD_TXPWR_CFG);
	cmd->size =
		FUNC0(S_DS_GEN + sizeof(struct host_cmd_ds_txpwr_cfg));
	switch (cmd_action) {
	case HostCmd_ACT_GEN_SET:
		if (txp->mode) {
			pg_tlv = (struct mwifiex_types_power_group
				  *) ((unsigned long) txp +
				     sizeof(struct host_cmd_ds_txpwr_cfg));
			FUNC2(cmd_txp_cfg, txp,
				sizeof(struct host_cmd_ds_txpwr_cfg) +
				sizeof(struct mwifiex_types_power_group) +
				FUNC1(pg_tlv->length));

			pg_tlv = (struct mwifiex_types_power_group *) ((u8 *)
				  cmd_txp_cfg +
				  sizeof(struct host_cmd_ds_txpwr_cfg));
			cmd->size = FUNC0(FUNC1(cmd->size) +
				  sizeof(struct mwifiex_types_power_group) +
				  FUNC1(pg_tlv->length));
		} else {
			FUNC2(cmd_txp_cfg, txp, sizeof(*txp));
		}
		cmd_txp_cfg->action = FUNC0(cmd_action);
		break;
	case HostCmd_ACT_GEN_GET:
		cmd_txp_cfg->action = FUNC0(cmd_action);
		break;
	}

	return 0;
}