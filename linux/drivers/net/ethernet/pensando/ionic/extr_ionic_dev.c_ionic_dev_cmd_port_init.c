
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info_pa; int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ port_init; } ;
struct ionic_dev {int port_info_pa; } ;


 int IONIC_CMD_PORT_INIT ;
 int cpu_to_le64 (int ) ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_port_init(struct ionic_dev *idev)
{
 union ionic_dev_cmd cmd = {
  .port_init.opcode = IONIC_CMD_PORT_INIT,
  .port_init.index = 0,
  .port_init.info_pa = cpu_to_le64(idev->port_info_pa),
 };

 ionic_dev_cmd_go(idev, &cmd);
}
