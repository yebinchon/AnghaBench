
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; int attr; int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_setattr; } ;
typedef int u32 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_PORT_SETATTR ;
 int IONIC_PORT_ATTR_SPEED ;
 int cpu_to_le32 (int ) ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_speed(struct ionic_dev *idev, u32 speed)
{
 union ionic_dev_cmd cmd = {
  .port_setattr.opcode = IONIC_CMD_PORT_SETATTR,
  .port_setattr.index = 0,
  .port_setattr.attr = IONIC_PORT_ATTR_SPEED,
  .port_setattr.speed = cpu_to_le32(speed),
 };

 ionic_dev_cmd_go(idev, &cmd);
}
