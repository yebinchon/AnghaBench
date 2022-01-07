
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {char* name; int num; int * v4l2_dev; int * lock; } ;
struct resource {int dummy; } ;
struct pxp_dev {int clk; int v4l2_dev; int m2m_dev; int dev_mutex; struct video_device vfd; int num_inst; int irqlock; int mmio; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VFL_TYPE_GRABBER ;
 int atomic_set (int *,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct pxp_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,int ,struct pxp_dev*) ;
 int m2m_ops ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxp_dev*) ;
 int pxp_irq_handler ;
 int pxp_soft_reset (struct pxp_dev*) ;
 struct video_device pxp_videodev ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct pxp_dev*) ;

__attribute__((used)) static int pxp_probe(struct platform_device *pdev)
{
 struct pxp_dev *dev;
 struct resource *res;
 struct video_device *vfd;
 int irq;
 int ret;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->clk = devm_clk_get(&pdev->dev, "axi");
 if (IS_ERR(dev->clk)) {
  ret = PTR_ERR(dev->clk);
  dev_err(&pdev->dev, "Failed to get clk: %d\n", ret);
  return ret;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dev->mmio = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dev->mmio)) {
  ret = PTR_ERR(dev->mmio);
  dev_err(&pdev->dev, "Failed to map register space: %d\n", ret);
  return ret;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), pxp_irq_handler,
   IRQF_ONESHOT, dev_name(&pdev->dev), dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request irq: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(dev->clk);
 if (ret < 0)
  return ret;

 ret = pxp_soft_reset(dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "PXP reset timeout: %d\n", ret);
  goto err_clk;
 }

 spin_lock_init(&dev->irqlock);

 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret)
  goto err_clk;

 atomic_set(&dev->num_inst, 0);
 mutex_init(&dev->dev_mutex);

 dev->vfd = pxp_videodev;
 vfd = &dev->vfd;
 vfd->lock = &dev->dev_mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;

 video_set_drvdata(vfd, dev);
 snprintf(vfd->name, sizeof(vfd->name), "%s", pxp_videodev.name);
 v4l2_info(&dev->v4l2_dev,
   "Device registered as /dev/video%d\n", vfd->num);

 platform_set_drvdata(pdev, dev);

 dev->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(dev->m2m_dev)) {
  v4l2_err(&dev->v4l2_dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(dev->m2m_dev);
  goto err_v4l2;
 }

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  v4l2_err(&dev->v4l2_dev, "Failed to register video device\n");
  goto err_m2m;
 }

 return 0;

err_m2m:
 v4l2_m2m_release(dev->m2m_dev);
err_v4l2:
 v4l2_device_unregister(&dev->v4l2_dev);
err_clk:
 clk_disable_unprepare(dev->clk);

 return ret;
}
