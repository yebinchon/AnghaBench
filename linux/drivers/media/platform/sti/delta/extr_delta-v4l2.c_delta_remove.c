
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct delta_dev {int v4l2_dev; int dev; int work_queue; } ;


 int delta_ipc_exit (struct delta_dev*) ;
 int delta_unregister_device (struct delta_dev*) ;
 int destroy_workqueue (int ) ;
 struct delta_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int delta_remove(struct platform_device *pdev)
{
 struct delta_dev *delta = platform_get_drvdata(pdev);

 delta_ipc_exit(delta);

 delta_unregister_device(delta);

 destroy_workqueue(delta->work_queue);

 pm_runtime_put_autosuspend(delta->dev);
 pm_runtime_disable(delta->dev);

 v4l2_device_unregister(&delta->v4l2_dev);

 return 0;
}
