
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dcmi {int dma_chan; int mdev; int v4l2_dev; TYPE_1__* vdev; int notifier; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int entity; } ;


 int dma_release_channel (int ) ;
 int media_device_cleanup (int *) ;
 int media_entity_cleanup (int *) ;
 struct stm32_dcmi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int dcmi_remove(struct platform_device *pdev)
{
 struct stm32_dcmi *dcmi = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 v4l2_async_notifier_unregister(&dcmi->notifier);
 v4l2_async_notifier_cleanup(&dcmi->notifier);
 media_entity_cleanup(&dcmi->vdev->entity);
 v4l2_device_unregister(&dcmi->v4l2_dev);
 media_device_cleanup(&dcmi->mdev);

 dma_release_channel(dcmi->dma_chan);

 return 0;
}
