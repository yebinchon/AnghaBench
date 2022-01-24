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
struct service_processor {int dummy; } ;
struct TYPE_2__ {int command_size; int data_size; scalar_t__ status; int /*<<< orphan*/  type; } ;
struct os_state_command {int* command; int data; TYPE_1__ header; } ;
struct command {scalar_t__ status; scalar_t__ buffer; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IBMASM_CMD_COMPLETE ; 
 int /*<<< orphan*/  IBMASM_CMD_TIMEOUT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  FUNC1 (struct service_processor*,struct command*) ; 
 struct command* FUNC2 (struct service_processor*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp_write ; 

int FUNC4(struct service_processor *sp, int os_state)
{
	struct command *cmd;
	struct os_state_command *os_state_cmd;
	int result = 0;

	cmd = FUNC2(sp, sizeof(struct os_state_command));
	if (cmd == NULL)
		return -ENOMEM;

	os_state_cmd = (struct os_state_command *)cmd->buffer;
	os_state_cmd->header.type		= sp_write;
	os_state_cmd->header.command_size	= 3;
	os_state_cmd->header.data_size		= 1;
	os_state_cmd->header.status		= 0;
	os_state_cmd->command[0]		= 4;
	os_state_cmd->command[1]		= 3;
	os_state_cmd->command[2]		= 6;
	os_state_cmd->data			= os_state;

	FUNC1(sp, cmd);
	FUNC3(cmd, IBMASM_CMD_TIMEOUT_NORMAL);

	if (cmd->status != IBMASM_CMD_COMPLETE)
		result = -ENODEV;

	FUNC0(cmd);
	return result;
}