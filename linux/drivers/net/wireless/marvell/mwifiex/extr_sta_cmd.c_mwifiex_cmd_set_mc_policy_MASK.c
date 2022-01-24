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
typedef  scalar_t__ const u16 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_multi_chan_policy {void* policy; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_multi_chan_policy mc_policy; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ const HostCmd_CMD_MC_POLICY ; 
 scalar_t__ const S_DS_GEN ; 
 void* FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static int
FUNC1(struct mwifiex_private *priv,
			  struct host_cmd_ds_command *cmd,
			  u16 cmd_action, void *data_buf)
{
	struct host_cmd_ds_multi_chan_policy *mc_pol = &cmd->params.mc_policy;
	const u16 *drcs_info = data_buf;

	mc_pol->action = FUNC0(cmd_action);
	mc_pol->policy = FUNC0(*drcs_info);
	cmd->command = FUNC0(HostCmd_CMD_MC_POLICY);
	cmd->size = FUNC0(sizeof(struct host_cmd_ds_multi_chan_policy) +
				S_DS_GEN);
	return 0;
}