
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * v4l2_dev; } ;
struct rvin_dev {int ctrl_handler; TYPE_2__* group; int v4l2_dev; TYPE_1__* info; TYPE_3__ notifier; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {int lock; TYPE_3__ notifier; } ;
struct TYPE_5__ {scalar_t__ use_mc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rvin_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int rvin_dma_unregister (struct rvin_dev*) ;
 int rvin_group_put (struct rvin_dev*) ;
 int rvin_v4l2_unregister (struct rvin_dev*) ;
 int v4l2_async_notifier_cleanup (TYPE_3__*) ;
 int v4l2_async_notifier_unregister (TYPE_3__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int rcar_vin_remove(struct platform_device *pdev)
{
 struct rvin_dev *vin = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 rvin_v4l2_unregister(vin);

 v4l2_async_notifier_unregister(&vin->notifier);
 v4l2_async_notifier_cleanup(&vin->notifier);

 if (vin->info->use_mc) {
  mutex_lock(&vin->group->lock);
  if (&vin->v4l2_dev == vin->group->notifier.v4l2_dev) {
   v4l2_async_notifier_unregister(&vin->group->notifier);
   v4l2_async_notifier_cleanup(&vin->group->notifier);
  }
  mutex_unlock(&vin->group->lock);
  rvin_group_put(vin);
 }

 v4l2_ctrl_handler_free(&vin->ctrl_handler);

 rvin_dma_unregister(vin);

 return 0;
}
