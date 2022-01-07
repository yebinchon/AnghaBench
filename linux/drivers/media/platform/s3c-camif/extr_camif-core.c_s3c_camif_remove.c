
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_camif_plat_data {int (* gpio_put ) () ;} ;
struct platform_device {int dev; } ;
struct camif_dev {int v4l2_dev; int media_dev; struct s3c_camif_plat_data pdata; } ;


 int camif_clk_put (struct camif_dev*) ;
 int camif_unregister_media_entities (struct camif_dev*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 struct camif_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int stub1 () ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int s3c_camif_remove(struct platform_device *pdev)
{
 struct camif_dev *camif = platform_get_drvdata(pdev);
 struct s3c_camif_plat_data *pdata = &camif->pdata;

 media_device_unregister(&camif->media_dev);
 media_device_cleanup(&camif->media_dev);
 camif_unregister_media_entities(camif);
 v4l2_device_unregister(&camif->v4l2_dev);

 pm_runtime_disable(&pdev->dev);
 camif_clk_put(camif);
 pdata->gpio_put();

 return 0;
}
