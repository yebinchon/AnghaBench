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
struct host_cmd_ds_11n_addba_req {int dummy; } ;
struct TYPE_2__ {struct host_cmd_ds_11n_addba_req add_ba_req; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ HostCmd_CMD_11N_ADDBA_REQ ; 
 scalar_t__ S_DS_GEN ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct host_cmd_ds_11n_addba_req*,void*,int) ; 

int FUNC2(struct host_cmd_ds_command *cmd, void *data_buf)
{
	struct host_cmd_ds_11n_addba_req *add_ba_req = &cmd->params.add_ba_req;

	cmd->command = FUNC0(HostCmd_CMD_11N_ADDBA_REQ);
	cmd->size = FUNC0(sizeof(*add_ba_req) + S_DS_GEN);
	FUNC1(add_ba_req, data_buf, sizeof(*add_ba_req));

	return 0;
}