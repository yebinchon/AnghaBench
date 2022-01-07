
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ceu_device {int vdev; int v4l2_dev; int notifier; int dev; } ;


 struct ceu_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int ceu_remove(struct platform_device *pdev)
{
 struct ceu_device *ceudev = platform_get_drvdata(pdev);

 pm_runtime_disable(ceudev->dev);

 v4l2_async_notifier_unregister(&ceudev->notifier);

 v4l2_async_notifier_cleanup(&ceudev->notifier);

 v4l2_device_unregister(&ceudev->v4l2_dev);

 video_unregister_device(&ceudev->vdev);

 return 0;
}
