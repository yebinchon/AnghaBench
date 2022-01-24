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
typedef  int u16 ;
struct host_cmd_ds_802_11_ibss_status {void* enable; void* action; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_ibss_status ibss_coalescing; } ;
struct host_cmd_ds_command {scalar_t__ result; void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
#define  HostCmd_ACT_GEN_GET 129 
#define  HostCmd_ACT_GEN_SET 128 
 int HostCmd_CMD_802_11_IBSS_COALESCING_STATUS ; 
 int S_DS_GEN ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct host_cmd_ds_command *cmd,
					      u16 cmd_action, u16 *enable)
{
	struct host_cmd_ds_802_11_ibss_status *ibss_coal =
		&(cmd->params.ibss_coalescing);

	cmd->command = FUNC0(HostCmd_CMD_802_11_IBSS_COALESCING_STATUS);
	cmd->size = FUNC0(sizeof(struct host_cmd_ds_802_11_ibss_status) +
				S_DS_GEN);
	cmd->result = 0;
	ibss_coal->action = FUNC0(cmd_action);

	switch (cmd_action) {
	case HostCmd_ACT_GEN_SET:
		if (enable)
			ibss_coal->enable = FUNC0(*enable);
		else
			ibss_coal->enable = 0;
		break;

		/* In other case.. Nothing to do */
	case HostCmd_ACT_GEN_GET:
	default:
		break;
	}

	return 0;
}