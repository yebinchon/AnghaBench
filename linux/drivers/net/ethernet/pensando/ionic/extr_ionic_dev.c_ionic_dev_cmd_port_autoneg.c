
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int an_enable; int attr; int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_setattr; } ;
typedef int u8 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_PORT_SETATTR ;
 int IONIC_PORT_ATTR_AUTONEG ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_autoneg(struct ionic_dev *idev, u8 an_enable)
{
 union ionic_dev_cmd cmd = {
  .port_setattr.opcode = IONIC_CMD_PORT_SETATTR,
  .port_setattr.index = 0,
  .port_setattr.attr = IONIC_PORT_ATTR_AUTONEG,
  .port_setattr.an_enable = an_enable,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
