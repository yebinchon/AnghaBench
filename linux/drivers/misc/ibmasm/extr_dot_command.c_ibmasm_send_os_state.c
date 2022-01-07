
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct service_processor {int dummy; } ;
struct TYPE_2__ {int command_size; int data_size; scalar_t__ status; int type; } ;
struct os_state_command {int* command; int data; TYPE_1__ header; } ;
struct command {scalar_t__ status; scalar_t__ buffer; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IBMASM_CMD_COMPLETE ;
 int IBMASM_CMD_TIMEOUT_NORMAL ;
 int command_put (struct command*) ;
 int ibmasm_exec_command (struct service_processor*,struct command*) ;
 struct command* ibmasm_new_command (struct service_processor*,int) ;
 int ibmasm_wait_for_response (struct command*,int ) ;
 int sp_write ;

int ibmasm_send_os_state(struct service_processor *sp, int os_state)
{
 struct command *cmd;
 struct os_state_command *os_state_cmd;
 int result = 0;

 cmd = ibmasm_new_command(sp, sizeof(struct os_state_command));
 if (cmd == ((void*)0))
  return -ENOMEM;

 os_state_cmd = (struct os_state_command *)cmd->buffer;
 os_state_cmd->header.type = sp_write;
 os_state_cmd->header.command_size = 3;
 os_state_cmd->header.data_size = 1;
 os_state_cmd->header.status = 0;
 os_state_cmd->command[0] = 4;
 os_state_cmd->command[1] = 3;
 os_state_cmd->command[2] = 6;
 os_state_cmd->data = os_state;

 ibmasm_exec_command(sp, cmd);
 ibmasm_wait_for_response(cmd, IBMASM_CMD_TIMEOUT_NORMAL);

 if (cmd->status != IBMASM_CMD_COMPLETE)
  result = -ENODEV;

 command_put(cmd);
 return result;
}
