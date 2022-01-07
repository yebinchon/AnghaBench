
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ver; int type; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ lif_identify; } ;
typedef int u8 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_LIF_IDENTIFY ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_lif_identify(struct ionic_dev *idev, u8 type, u8 ver)
{
 union ionic_dev_cmd cmd = {
  .lif_identify.opcode = IONIC_CMD_LIF_IDENTIFY,
  .lif_identify.type = type,
  .lif_identify.ver = ver,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
