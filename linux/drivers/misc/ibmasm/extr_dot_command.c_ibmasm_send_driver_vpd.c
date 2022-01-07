
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct service_processor {int dummy; } ;
struct dot_command_header {int command_size; int data_size; scalar_t__ reserved; scalar_t__ status; int type; } ;
struct command {int* buffer; scalar_t__ status; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IBMASM_CMD_COMPLETE ;
 int IBMASM_CMD_TIMEOUT_NORMAL ;
 int IBMASM_DRIVER_VPD ;
 int INIT_BUFFER_SIZE ;
 int command_put (struct command*) ;
 int ibmasm_exec_command (struct service_processor*,struct command*) ;
 struct command* ibmasm_new_command (struct service_processor*,int ) ;
 int ibmasm_wait_for_response (struct command*,int ) ;
 int sp_write ;
 int strcat (int*,int ) ;

int ibmasm_send_driver_vpd(struct service_processor *sp)
{
 struct command *command;
 struct dot_command_header *header;
 u8 *vpd_command;
 u8 *vpd_data;
 int result = 0;

 command = ibmasm_new_command(sp, INIT_BUFFER_SIZE);
 if (command == ((void*)0))
  return -ENOMEM;

 header = (struct dot_command_header *)command->buffer;
 header->type = sp_write;
 header->command_size = 4;
 header->data_size = 16;
 header->status = 0;
 header->reserved = 0;

 vpd_command = command->buffer + sizeof(struct dot_command_header);
 vpd_command[0] = 0x4;
 vpd_command[1] = 0x3;
 vpd_command[2] = 0x5;
 vpd_command[3] = 0xa;

 vpd_data = vpd_command + header->command_size;
 vpd_data[0] = 0;
 strcat(vpd_data, IBMASM_DRIVER_VPD);
 vpd_data[10] = 0;
 vpd_data[15] = 0;

 ibmasm_exec_command(sp, command);
 ibmasm_wait_for_response(command, IBMASM_CMD_TIMEOUT_NORMAL);

 if (command->status != IBMASM_CMD_COMPLETE)
  result = -ENODEV;

 command_put(command);

 return result;
}
