
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int v4l2_dev; int * mclk_clk; int notifier; int * dma_chans; } ;
struct platform_device {int dev; } ;


 struct pxa_camera_dev* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int dma_release_channel (int ) ;
 int pxa_camera_deactivate (struct pxa_camera_dev*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_clk_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int pxa_camera_remove(struct platform_device *pdev)
{
 struct pxa_camera_dev *pcdev = dev_get_drvdata(&pdev->dev);

 pxa_camera_deactivate(pcdev);
 dma_release_channel(pcdev->dma_chans[0]);
 dma_release_channel(pcdev->dma_chans[1]);
 dma_release_channel(pcdev->dma_chans[2]);

 v4l2_async_notifier_unregister(&pcdev->notifier);
 v4l2_async_notifier_cleanup(&pcdev->notifier);

 if (pcdev->mclk_clk) {
  v4l2_clk_unregister(pcdev->mclk_clk);
  pcdev->mclk_clk = ((void*)0);
 }

 v4l2_device_unregister(&pcdev->v4l2_dev);

 dev_info(&pdev->dev, "PXA Camera driver unloaded\n");

 return 0;
}
