
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ver; int opcode; } ;
union ionic_dev_cmd {TYPE_1__ identify; } ;
typedef int u8 ;
struct ionic_dev {int dummy; } ;


 int IONIC_CMD_IDENTIFY ;
 int ionic_dev_cmd_go (struct ionic_dev*,union ionic_dev_cmd*) ;

void ionic_dev_cmd_identify(struct ionic_dev *idev, u8 ver)
{
 union ionic_dev_cmd cmd = {
  .identify.opcode = IONIC_CMD_IDENTIFY,
  .identify.ver = ver,
 };

 ionic_dev_cmd_go(idev, &cmd);
}
