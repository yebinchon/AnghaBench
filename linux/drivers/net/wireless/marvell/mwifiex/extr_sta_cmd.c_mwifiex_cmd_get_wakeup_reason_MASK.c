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
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_wakeup_reason {int dummy; } ;
struct host_cmd_ds_command {void* size; void* command; } ;

/* Variables and functions */
 scalar_t__ HostCmd_CMD_HS_WAKEUP_REASON ; 
 scalar_t__ S_DS_GEN ; 
 void* FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct mwifiex_private *priv,
					 struct host_cmd_ds_command *cmd)
{
	cmd->command = FUNC0(HostCmd_CMD_HS_WAKEUP_REASON);
	cmd->size = FUNC0(sizeof(struct host_cmd_ds_wakeup_reason) +
				S_DS_GEN);

	return 0;
}