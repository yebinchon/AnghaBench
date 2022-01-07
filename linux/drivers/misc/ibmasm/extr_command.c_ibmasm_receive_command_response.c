
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {struct command* current_command; } ;
struct command {int wait; int status; int buffer_size; int buffer; } ;


 int IBMASM_CMD_COMPLETE ;
 int command_put (struct command*) ;
 int exec_next_command (struct service_processor*) ;
 int memcpy_fromio (int ,void*,int ) ;
 int min (size_t,int ) ;
 int wake_up (int *) ;

void ibmasm_receive_command_response(struct service_processor *sp, void *response, size_t size)
{
 struct command *cmd = sp->current_command;

 if (!sp->current_command)
  return;

 memcpy_fromio(cmd->buffer, response, min(size, cmd->buffer_size));
 cmd->status = IBMASM_CMD_COMPLETE;
 wake_up(&sp->current_command->wait);
 command_put(sp->current_command);
 exec_next_command(sp);
}
