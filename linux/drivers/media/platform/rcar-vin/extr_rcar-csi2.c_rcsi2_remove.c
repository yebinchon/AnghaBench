
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int subdev; int notifier; } ;
struct platform_device {int dev; } ;


 struct rcar_csi2* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_async_unregister_subdev (int *) ;

__attribute__((used)) static int rcsi2_remove(struct platform_device *pdev)
{
 struct rcar_csi2 *priv = platform_get_drvdata(pdev);

 v4l2_async_notifier_unregister(&priv->notifier);
 v4l2_async_notifier_cleanup(&priv->notifier);
 v4l2_async_unregister_subdev(&priv->subdev);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
