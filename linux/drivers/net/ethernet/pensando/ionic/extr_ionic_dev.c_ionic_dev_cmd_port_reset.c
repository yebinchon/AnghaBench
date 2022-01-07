
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_reset; } ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_PORT_RESET ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_reset(struct ionic_dev *idev)
{
 union ionic_dev_cmd cmd = {
  .port_reset.opcode = IONIC_CMD_PORT_RESET,
  .port_reset.index = 0,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
