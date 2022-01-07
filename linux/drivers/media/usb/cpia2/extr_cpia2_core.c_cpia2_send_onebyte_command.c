
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {void** block_data; } ;
struct cpia2_command {int reg_count; void* start; TYPE_1__ buffer; } ;
struct camera_data {int dummy; } ;


 int cpia2_send_command (struct camera_data*,struct cpia2_command*) ;

__attribute__((used)) static int cpia2_send_onebyte_command(struct camera_data *cam,
          struct cpia2_command *cmd,
          u8 start, u8 datum)
{
 cmd->buffer.block_data[0] = datum;
 cmd->start = start;
 cmd->reg_count = 1;
 return cpia2_send_command(cam, cmd);
}
