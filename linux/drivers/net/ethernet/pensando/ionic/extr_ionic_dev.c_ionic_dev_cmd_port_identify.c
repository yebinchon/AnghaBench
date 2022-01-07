
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_init; } ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_PORT_IDENTIFY ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_identify(struct ionic_dev *idev)
{
 union ionic_dev_cmd cmd = {
  .port_init.opcode = IONIC_CMD_PORT_IDENTIFY,
  .port_init.index = 0,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
