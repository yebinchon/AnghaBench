
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cosm_device {TYPE_1__* hw_ops; } ;
struct TYPE_2__ {scalar_t__ (* ready ) (struct cosm_device*) ;int (* reset ) (struct cosm_device*) ;int (* force_reset ) (struct cosm_device*) ;} ;


 int MIC_READY ;
 int MIC_RESET_FAILED ;
 int MIC_RESET_TO ;
 int cosm_set_state (struct cosm_device*,int ) ;
 int msleep (int) ;
 int stub1 (struct cosm_device*) ;
 int stub2 (struct cosm_device*) ;
 scalar_t__ stub3 (struct cosm_device*) ;

__attribute__((used)) static void cosm_hw_reset(struct cosm_device *cdev, bool force)
{
 int i;


 if (force && cdev->hw_ops->force_reset)
  cdev->hw_ops->force_reset(cdev);
 else
  cdev->hw_ops->reset(cdev);

 for (i = 0; i < (45); i++) {
  if (cdev->hw_ops->ready(cdev)) {
   cosm_set_state(cdev, MIC_READY);
   return;
  }





  msleep(1000);
 }
 cosm_set_state(cdev, MIC_RESET_FAILED);
}
