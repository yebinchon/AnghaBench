
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {int video_dev; int v4l2_dev; struct vpfe_device* sd; int ccdc_irq0; } ;
struct TYPE_2__ {int driver; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct vpfe_device* ccdc_cfg ;
 int free_irq (int ,struct vpfe_device*) ;
 int kfree (struct vpfe_device*) ;
 struct vpfe_device* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int ,char*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int vpfe_remove(struct platform_device *pdev)
{
 struct vpfe_device *vpfe_dev = platform_get_drvdata(pdev);

 v4l2_info(pdev->dev.driver, "vpfe_remove\n");

 free_irq(vpfe_dev->ccdc_irq0, vpfe_dev);
 kfree(vpfe_dev->sd);
 v4l2_device_unregister(&vpfe_dev->v4l2_dev);
 video_unregister_device(&vpfe_dev->video_dev);
 kfree(vpfe_dev);
 kfree(ccdc_cfg);
 return 0;
}
