
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ lif_init; } ;
typedef int u16 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_LIF_RESET ;
 int cpu_to_le16 (int ) ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_lif_reset(struct ionic_dev *idev, u16 lif_index)
{
 union ionic_dev_cmd cmd = {
  .lif_init.opcode = IONIC_CMD_LIF_RESET,
  .lif_init.index = cpu_to_le16(lif_index),
 };

 ionic_dev_cmd_go(idev, &cmd);
}
