
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fimc_md {int media_dev; int v4l2_dev; int subdev_notifier; } ;


 int dev_attr_subdev_conf_mode ;
 int device_remove_file (int *,int *) ;
 int fimc_md_pipelines_free (struct fimc_md*) ;
 int fimc_md_put_clocks (struct fimc_md*) ;
 int fimc_md_unregister_clk_provider (struct fimc_md*) ;
 int fimc_md_unregister_entities (struct fimc_md*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 struct fimc_md* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int fimc_md_remove(struct platform_device *pdev)
{
 struct fimc_md *fmd = platform_get_drvdata(pdev);

 if (!fmd)
  return 0;

 fimc_md_unregister_clk_provider(fmd);
 v4l2_async_notifier_unregister(&fmd->subdev_notifier);
 v4l2_async_notifier_cleanup(&fmd->subdev_notifier);

 v4l2_device_unregister(&fmd->v4l2_dev);
 device_remove_file(&pdev->dev, &dev_attr_subdev_conf_mode);
 fimc_md_unregister_entities(fmd);
 fimc_md_pipelines_free(fmd);
 media_device_unregister(&fmd->media_dev);
 media_device_cleanup(&fmd->media_dev);
 fimc_md_put_clocks(fmd);

 return 0;
}
