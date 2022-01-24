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
struct host_cmd_ds_command {void* size; void* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_CMD_802_11_AD_HOC_STOP ; 
 int /*<<< orphan*/  S_DS_GEN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct host_cmd_ds_command *cmd)
{
	cmd->command = FUNC0(HostCmd_CMD_802_11_AD_HOC_STOP);
	cmd->size = FUNC0(S_DS_GEN);
	return 0;
}