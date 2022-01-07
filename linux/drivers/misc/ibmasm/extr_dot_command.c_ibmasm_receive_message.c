
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct service_processor {int dev; } ;
struct dot_command_header {int type; } ;


 int dev_err (int ,char*) ;
 int get_dot_command_size (void*) ;
 int ibmasm_receive_command_response (struct service_processor*,void*,int) ;
 int ibmasm_receive_event (struct service_processor*,void*,int) ;
 int ibmasm_receive_heartbeat (struct service_processor*,void*,int) ;




void ibmasm_receive_message(struct service_processor *sp, void *message, int message_size)
{
 u32 size;
 struct dot_command_header *header = (struct dot_command_header *)message;

 if (message_size == 0)
  return;

 size = get_dot_command_size(message);
 if (size == 0)
  return;

 if (size > message_size)
  size = message_size;

 switch (header->type) {
 case 129:
  ibmasm_receive_event(sp, message, size);
  break;
 case 130:
  ibmasm_receive_command_response(sp, message, size);
  break;
 case 128:
  ibmasm_receive_heartbeat(sp, message, size);
  break;
 default:
  dev_err(sp->dev, "Received unknown message from service processor\n");
 }
}
