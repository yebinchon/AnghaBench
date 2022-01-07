
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ionic_dev_cmd {int dummy; } ionic_dev_cmd ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct TYPE_2__ {int doorbell; int done; int cmd; } ;


 int iowrite32 (int,int *) ;
 int memcpy_toio (int *,union ionic_dev_cmd*,int) ;

void ionic_dev_cmd_go(struct ionic_dev *idev, union ionic_dev_cmd *cmd)
{
 memcpy_toio(&idev->dev_cmd_regs->cmd, cmd, sizeof(*cmd));
 iowrite32(0, &idev->dev_cmd_regs->done);
 iowrite32(1, &idev->dev_cmd_regs->doorbell);
}
