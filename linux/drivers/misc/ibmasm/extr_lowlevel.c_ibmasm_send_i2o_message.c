
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct service_processor {int base_address; struct command* current_command; } ;
struct i2o_message {int data; int header; } ;
struct i2o_header {int dummy; } ;
struct command {TYPE_1__* buffer; } ;
struct TYPE_4__ {int message_size; } ;


 unsigned int get_dot_command_size (TYPE_1__*) ;
 struct i2o_message* get_i2o_message (int ,int ) ;
 int get_mfa_inbound (int ) ;
 TYPE_1__ header ;
 int memcpy_toio (int *,TYPE_1__*,unsigned int) ;
 int outgoing_message_size (unsigned int) ;
 int set_mfa_inbound (int ,int ) ;

int ibmasm_send_i2o_message(struct service_processor *sp)
{
 u32 mfa;
 unsigned int command_size;
 struct i2o_message *message;
 struct command *command = sp->current_command;

 mfa = get_mfa_inbound(sp->base_address);
 if (!mfa)
  return 1;

 command_size = get_dot_command_size(command->buffer);
 header.message_size = outgoing_message_size(command_size);

 message = get_i2o_message(sp->base_address, mfa);

 memcpy_toio(&message->header, &header, sizeof(struct i2o_header));
 memcpy_toio(&message->data, command->buffer, command_size);

 set_mfa_inbound(sp->base_address, mfa);

 return 0;
}
