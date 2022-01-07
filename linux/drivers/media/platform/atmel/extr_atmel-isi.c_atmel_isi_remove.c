
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fbd {int dummy; } ;
struct atmel_isi {int v4l2_dev; int notifier; int fb_descriptors_phys; int p_fb_descriptors; } ;


 int VIDEO_MAX_FRAME ;
 int dma_free_coherent (int *,int,int ,int ) ;
 struct atmel_isi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int atmel_isi_remove(struct platform_device *pdev)
{
 struct atmel_isi *isi = platform_get_drvdata(pdev);

 dma_free_coherent(&pdev->dev,
   sizeof(struct fbd) * VIDEO_MAX_FRAME,
   isi->p_fb_descriptors,
   isi->fb_descriptors_phys);
 pm_runtime_disable(&pdev->dev);
 v4l2_async_notifier_unregister(&isi->notifier);
 v4l2_async_notifier_cleanup(&isi->notifier);
 v4l2_device_unregister(&isi->v4l2_dev);

 return 0;
}
