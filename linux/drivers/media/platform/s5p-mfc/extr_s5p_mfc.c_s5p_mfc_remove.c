
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int v4l2_dev; int vfd_dec; int vfd_enc; int watchdog_work; int watchdog_timer; int mfc_mutex; struct s5p_mfc_ctx** ctx; } ;
struct s5p_mfc_ctx {int * dev; } ;
struct platform_device {int name; } ;


 int MFC_NUM_CONTEXTS ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5p_mfc_dev* platform_get_drvdata (struct platform_device*) ;
 int s5p_mfc_final_pm (struct s5p_mfc_dev*) ;
 int s5p_mfc_unconfigure_dma_memory (struct s5p_mfc_dev*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int video_device_release (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int s5p_mfc_remove(struct platform_device *pdev)
{
 struct s5p_mfc_dev *dev = platform_get_drvdata(pdev);
 struct s5p_mfc_ctx *ctx;
 int i;

 v4l2_info(&dev->v4l2_dev, "Removing %s\n", pdev->name);






 mutex_lock(&dev->mfc_mutex);
 for (i = 0; i < MFC_NUM_CONTEXTS; i++) {
  ctx = dev->ctx[i];
  if (!ctx)
   continue;

  ctx->dev = ((void*)0);
 }
 mutex_unlock(&dev->mfc_mutex);

 del_timer_sync(&dev->watchdog_timer);
 flush_work(&dev->watchdog_work);

 video_unregister_device(dev->vfd_enc);
 video_unregister_device(dev->vfd_dec);
 video_device_release(dev->vfd_enc);
 video_device_release(dev->vfd_dec);
 v4l2_device_unregister(&dev->v4l2_dev);
 s5p_mfc_unconfigure_dma_memory(dev);

 s5p_mfc_final_pm(dev);
 return 0;
}
