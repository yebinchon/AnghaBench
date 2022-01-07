
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clock_frequency; } ;
struct s3c_camif_plat_data {int (* gpio_get ) () ;int (* gpio_put ) () ;TYPE_1__ sensor; } ;
struct s3c_camif_drvdata {int variant; } ;
struct resource {int dummy; } ;
struct device {struct s3c_camif_plat_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct camif_dev {int media_dev; int v4l2_dev; int subdev; int * clock; struct s3c_camif_plat_data pdata; int io_base; int variant; struct device* dev; int lock; int slock; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 size_t CLK_CAM ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int camif_clk_get (struct camif_dev*) ;
 int camif_clk_put (struct camif_dev*) ;
 int camif_create_media_links (struct camif_dev*) ;
 int camif_media_dev_init (struct camif_dev*) ;
 int camif_register_sensor (struct camif_dev*) ;
 int camif_register_video_nodes (struct camif_dev*) ;
 int camif_request_irqs (struct platform_device*,struct camif_dev*) ;
 int camif_unregister_media_entities (struct camif_dev*) ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct camif_dev* devm_kzalloc (struct device*,int,int ) ;
 int media_device_cleanup (int *) ;
 int media_device_register (int *) ;
 int media_device_unregister (int *) ;
 int mutex_init (int *) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct camif_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int s3c_camif_create_subdev (struct camif_dev*) ;
 int s3c_camif_set_defaults (struct camif_dev*) ;
 int s3c_camif_unregister_subdev (struct camif_dev*) ;
 int spin_lock_init (int *) ;
 int stub1 () ;
 int stub2 () ;
 int v4l2_device_register_subdev (int *,int *) ;
 int v4l2_device_register_subdev_nodes (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int s3c_camif_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct s3c_camif_plat_data *pdata = dev->platform_data;
 struct s3c_camif_drvdata *drvdata;
 struct camif_dev *camif;
 struct resource *mres;
 int ret = 0;

 camif = devm_kzalloc(dev, sizeof(*camif), GFP_KERNEL);
 if (!camif)
  return -ENOMEM;

 spin_lock_init(&camif->slock);
 mutex_init(&camif->lock);

 camif->dev = dev;

 if (!pdata || !pdata->gpio_get || !pdata->gpio_put) {
  dev_err(dev, "wrong platform data\n");
  return -EINVAL;
 }

 camif->pdata = *pdata;
 drvdata = (void *)platform_get_device_id(pdev)->driver_data;
 camif->variant = drvdata->variant;

 mres = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 camif->io_base = devm_ioremap_resource(dev, mres);
 if (IS_ERR(camif->io_base))
  return PTR_ERR(camif->io_base);

 ret = camif_request_irqs(pdev, camif);
 if (ret < 0)
  return ret;

 ret = pdata->gpio_get();
 if (ret < 0)
  return ret;

 ret = s3c_camif_create_subdev(camif);
 if (ret < 0)
  goto err_sd;

 ret = camif_clk_get(camif);
 if (ret < 0)
  goto err_clk;

 platform_set_drvdata(pdev, camif);
 clk_set_rate(camif->clock[CLK_CAM],
   camif->pdata.sensor.clock_frequency);

 dev_info(dev, "sensor clock frequency: %lu\n",
   clk_get_rate(camif->clock[CLK_CAM]));





 s3c_camif_set_defaults(camif);

 pm_runtime_enable(dev);

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  goto err_pm;

 ret = camif_media_dev_init(camif);
 if (ret < 0)
  goto err_alloc;

 ret = camif_register_sensor(camif);
 if (ret < 0)
  goto err_sens;

 ret = v4l2_device_register_subdev(&camif->v4l2_dev, &camif->subdev);
 if (ret < 0)
  goto err_sens;

 ret = v4l2_device_register_subdev_nodes(&camif->v4l2_dev);
 if (ret < 0)
  goto err_sens;

 ret = camif_register_video_nodes(camif);
 if (ret < 0)
  goto err_sens;

 ret = camif_create_media_links(camif);
 if (ret < 0)
  goto err_sens;

 ret = media_device_register(&camif->media_dev);
 if (ret < 0)
  goto err_sens;

 pm_runtime_put(dev);
 return 0;

err_sens:
 v4l2_device_unregister(&camif->v4l2_dev);
 media_device_unregister(&camif->media_dev);
 media_device_cleanup(&camif->media_dev);
 camif_unregister_media_entities(camif);
err_alloc:
 pm_runtime_put(dev);
 pm_runtime_disable(dev);
err_pm:
 camif_clk_put(camif);
err_clk:
 s3c_camif_unregister_subdev(camif);
err_sd:
 pdata->gpio_put();
 return ret;
}
