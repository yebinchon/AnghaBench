
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_flctl {int qos_request; TYPE_1__* pdev; int holden; int pm_qos; int flcmncr_base; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 int CE0_ENABLE ;
 int DEV_PM_QOS_RESUME_LATENCY ;
 int FLCMNCR (struct sh_flctl*) ;
 int FLHOLDCR (struct sh_flctl*) ;
 int HOLDEN ;
 int dev_err (int *,char*,int) ;
 int dev_pm_qos_add_request (int *,int *,int ,int) ;
 int dev_pm_qos_remove_request (int *) ;
 struct sh_flctl* mtd_to_flctl (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static void flctl_select_chip(struct nand_chip *chip, int chipnr)
{
 struct sh_flctl *flctl = mtd_to_flctl(nand_to_mtd(chip));
 int ret;

 switch (chipnr) {
 case -1:
  flctl->flcmncr_base &= ~CE0_ENABLE;

  pm_runtime_get_sync(&flctl->pdev->dev);
  writel(flctl->flcmncr_base, FLCMNCR(flctl));

  if (flctl->qos_request) {
   dev_pm_qos_remove_request(&flctl->pm_qos);
   flctl->qos_request = 0;
  }

  pm_runtime_put_sync(&flctl->pdev->dev);
  break;
 case 0:
  flctl->flcmncr_base |= CE0_ENABLE;

  if (!flctl->qos_request) {
   ret = dev_pm_qos_add_request(&flctl->pdev->dev,
       &flctl->pm_qos,
       DEV_PM_QOS_RESUME_LATENCY,
       100);
   if (ret < 0)
    dev_err(&flctl->pdev->dev,
     "PM QoS request failed: %d\n", ret);
   flctl->qos_request = 1;
  }

  if (flctl->holden) {
   pm_runtime_get_sync(&flctl->pdev->dev);
   writel(HOLDEN, FLHOLDCR(flctl));
   pm_runtime_put_sync(&flctl->pdev->dev);
  }
  break;
 default:
  BUG();
 }
}
