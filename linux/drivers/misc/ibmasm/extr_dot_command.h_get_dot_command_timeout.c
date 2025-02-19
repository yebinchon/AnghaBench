
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dot_command_header {int command_size; } ;


 unsigned int IBMASM_CMD_TIMEOUT_EXTRA ;
 unsigned int IBMASM_CMD_TIMEOUT_NORMAL ;

__attribute__((used)) static inline unsigned int get_dot_command_timeout(void *buffer)
{
 struct dot_command_header *header = (struct dot_command_header *)buffer;
 unsigned char *cmd = buffer + sizeof(struct dot_command_header);



 if (header->command_size == 3) {
  if ((cmd[0] == 6) && (cmd[1] == 3) && (cmd[2] == 1))
   return IBMASM_CMD_TIMEOUT_EXTRA;
 } else if (header->command_size == 2) {
  if ((cmd[0] == 7) && (cmd[1] == 1))
   return IBMASM_CMD_TIMEOUT_EXTRA;
  if (cmd[0] == 8)
   return IBMASM_CMD_TIMEOUT_EXTRA;
 }
 return IBMASM_CMD_TIMEOUT_NORMAL;
}
