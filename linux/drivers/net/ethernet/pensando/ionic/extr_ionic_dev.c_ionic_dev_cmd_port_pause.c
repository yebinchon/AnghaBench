
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pause_type; int attr; int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_setattr; } ;
typedef int u8 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_PORT_SETATTR ;
 int IONIC_PORT_ATTR_PAUSE ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_pause(struct ionic_dev *idev, u8 pause_type)
{
 union ionic_dev_cmd cmd = {
  .port_setattr.opcode = IONIC_CMD_PORT_SETATTR,
  .port_setattr.index = 0,
  .port_setattr.attr = IONIC_PORT_ATTR_PAUSE,
  .port_setattr.pause_type = pause_type,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
