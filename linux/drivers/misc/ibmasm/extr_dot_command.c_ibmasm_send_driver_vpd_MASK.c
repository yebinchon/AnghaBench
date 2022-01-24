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
typedef  int u8 ;
struct service_processor {int dummy; } ;
struct dot_command_header {int command_size; int data_size; scalar_t__ reserved; scalar_t__ status; int /*<<< orphan*/  type; } ;
struct command {int* buffer; scalar_t__ status; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IBMASM_CMD_COMPLETE ; 
 int /*<<< orphan*/  IBMASM_CMD_TIMEOUT_NORMAL ; 
 int /*<<< orphan*/  IBMASM_DRIVER_VPD ; 
 int /*<<< orphan*/  INIT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  FUNC1 (struct service_processor*,struct command*) ; 
 struct command* FUNC2 (struct service_processor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp_write ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 

int FUNC5(struct service_processor *sp)
{
	struct command *command;
	struct dot_command_header *header;
	u8 *vpd_command;
	u8 *vpd_data;
	int result = 0;

	command = FUNC2(sp, INIT_BUFFER_SIZE);
	if (command == NULL)
		return -ENOMEM;

	header = (struct dot_command_header *)command->buffer;
	header->type                = sp_write;
	header->command_size        = 4;
	header->data_size           = 16;
	header->status              = 0;
	header->reserved            = 0;

	vpd_command = command->buffer + sizeof(struct dot_command_header);
	vpd_command[0] = 0x4;
	vpd_command[1] = 0x3;
	vpd_command[2] = 0x5;
	vpd_command[3] = 0xa;

	vpd_data = vpd_command + header->command_size;
	vpd_data[0] = 0;
	FUNC4(vpd_data, IBMASM_DRIVER_VPD);
	vpd_data[10] = 0;
	vpd_data[15] = 0;

	FUNC1(sp, command);
	FUNC3(command, IBMASM_CMD_TIMEOUT_NORMAL);

	if (command->status != IBMASM_CMD_COMPLETE)
		result = -ENODEV;

	FUNC0(command);

	return result;
}