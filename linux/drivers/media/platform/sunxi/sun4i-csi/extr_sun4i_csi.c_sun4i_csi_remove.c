
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_csi {int mdev; int notifier; } ;
struct platform_device {int dummy; } ;


 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 struct sun4i_csi* platform_get_drvdata (struct platform_device*) ;
 int sun4i_csi_dma_unregister (struct sun4i_csi*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;

__attribute__((used)) static int sun4i_csi_remove(struct platform_device *pdev)
{
 struct sun4i_csi *csi = platform_get_drvdata(pdev);

 v4l2_async_notifier_unregister(&csi->notifier);
 v4l2_async_notifier_cleanup(&csi->notifier);
 media_device_unregister(&csi->mdev);
 sun4i_csi_dma_unregister(csi);
 media_device_cleanup(&csi->mdev);

 return 0;
}
