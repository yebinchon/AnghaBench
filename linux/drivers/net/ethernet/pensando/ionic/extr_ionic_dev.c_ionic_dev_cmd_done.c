
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct TYPE_2__ {int done; } ;


 int IONIC_DEV_CMD_DONE ;
 int ioread32 (int *) ;

bool ionic_dev_cmd_done(struct ionic_dev *idev)
{
 return ioread32(&idev->dev_cmd_regs->done) & IONIC_DEV_CMD_DONE;
}
