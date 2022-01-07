
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int video_dev; int v4l2_dev; int notifier; } ;
struct platform_device {int dev; } ;


 struct vpfe_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;

__attribute__((used)) static int vpfe_remove(struct platform_device *pdev)
{
 struct vpfe_device *vpfe = platform_get_drvdata(pdev);

 vpfe_dbg(2, vpfe, "vpfe_remove\n");

 pm_runtime_disable(&pdev->dev);

 v4l2_async_notifier_unregister(&vpfe->notifier);
 v4l2_async_notifier_cleanup(&vpfe->notifier);
 v4l2_device_unregister(&vpfe->v4l2_dev);
 video_unregister_device(&vpfe->video_dev);

 return 0;
}
