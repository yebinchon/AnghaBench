
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ican3_dev {int num; int ndev; scalar_t__ dpm; TYPE_2__* dpmctrl; int free_page; TYPE_1__* ctrl; } ;
struct TYPE_4__ {int hwreset; } ;
struct TYPE_3__ {int int_disable; } ;


 int DPM_FREE_START ;
 int ETIMEDOUT ;
 int HZ ;
 int QUEUE_OLD_CONTROL ;
 scalar_t__ TARGET_RUNNING ;
 int ican3_set_page (struct ican3_dev*,int ) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int,int *) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int netdev_err (int ,char*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ican3_reset_module(struct ican3_dev *mod)
{
 unsigned long start;
 u8 runold, runnew;


 iowrite8(1 << mod->num, &mod->ctrl->int_disable);


 mod->free_page = DPM_FREE_START;

 ican3_set_page(mod, QUEUE_OLD_CONTROL);
 runold = ioread8(mod->dpm + TARGET_RUNNING);


 iowrite8(0x00, &mod->dpmctrl->hwreset);


 start = jiffies;
 do {
  ican3_set_page(mod, QUEUE_OLD_CONTROL);
  runnew = ioread8(mod->dpm + TARGET_RUNNING);
  if (runnew == (runold ^ 0xff))
   return 0;

  msleep(10);
 } while (time_before(jiffies, start + HZ / 2));

 netdev_err(mod->ndev, "failed to reset CAN module\n");
 return -ETIMEDOUT;
}
