
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int size; scalar_t__ vaddr; } ;
struct coda_dev {int ida; int debugfs_root; int workbuf; int tempbuf; int codebuf; TYPE_1__ iram; int iram_pool; int workqueue; int v4l2_dev; scalar_t__ m2m_dev; int * vfd; } ;


 int ARRAY_SIZE (int *) ;
 int coda_free_aux_buf (struct coda_dev*,int *) ;
 int debugfs_remove_recursive (int ) ;
 int destroy_workqueue (int ) ;
 int gen_pool_free (int ,unsigned long,int ) ;
 int ida_destroy (int *) ;
 struct coda_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (scalar_t__) ;
 scalar_t__ video_get_drvdata (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int coda_remove(struct platform_device *pdev)
{
 struct coda_dev *dev = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < ARRAY_SIZE(dev->vfd); i++) {
  if (video_get_drvdata(&dev->vfd[i]))
   video_unregister_device(&dev->vfd[i]);
 }
 if (dev->m2m_dev)
  v4l2_m2m_release(dev->m2m_dev);
 pm_runtime_disable(&pdev->dev);
 v4l2_device_unregister(&dev->v4l2_dev);
 destroy_workqueue(dev->workqueue);
 if (dev->iram.vaddr)
  gen_pool_free(dev->iram_pool, (unsigned long)dev->iram.vaddr,
         dev->iram.size);
 coda_free_aux_buf(dev, &dev->codebuf);
 coda_free_aux_buf(dev, &dev->tempbuf);
 coda_free_aux_buf(dev, &dev->workbuf);
 debugfs_remove_recursive(dev->debugfs_root);
 ida_destroy(&dev->ida);
 return 0;
}
