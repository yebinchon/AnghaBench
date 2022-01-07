
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * lock; int * v4l2_dev; } ;
struct sh_veu_dev {int is_2h; int v4l2_dev; int m2m_dev; int vfmt_in; int vfmt_out; int * dev; int fop_lock; int lock; struct video_device vdev; int base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int DEFAULT_IN_VFMT ;
 int DEFAULT_OUT_VFMT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VFL_TYPE_GRABBER ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct sh_veu_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int ,int ,int ,char*,struct sh_veu_dev*) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_resume (int *) ;
 int pm_runtime_suspend (int *) ;
 int resource_size (struct resource*) ;
 int sh_veu_bh ;
 int sh_veu_isr ;
 int sh_veu_m2m_ops ;
 struct video_device sh_veu_videodev ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*,int) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct sh_veu_dev*) ;

__attribute__((used)) static int sh_veu_probe(struct platform_device *pdev)
{
 struct sh_veu_dev *veu;
 struct resource *reg_res;
 struct video_device *vdev;
 int irq, ret;

 reg_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);

 if (!reg_res || irq <= 0) {
  dev_err(&pdev->dev, "Insufficient VEU platform information.\n");
  return -ENODEV;
 }

 veu = devm_kzalloc(&pdev->dev, sizeof(*veu), GFP_KERNEL);
 if (!veu)
  return -ENOMEM;

 veu->is_2h = resource_size(reg_res) == 0x22c;

 veu->base = devm_ioremap_resource(&pdev->dev, reg_res);
 if (IS_ERR(veu->base))
  return PTR_ERR(veu->base);

 ret = devm_request_threaded_irq(&pdev->dev, irq, sh_veu_isr, sh_veu_bh,
     0, "veu", veu);
 if (ret < 0)
  return ret;

 ret = v4l2_device_register(&pdev->dev, &veu->v4l2_dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Error registering v4l2 device\n");
  return ret;
 }

 vdev = &veu->vdev;

 *vdev = sh_veu_videodev;
 vdev->v4l2_dev = &veu->v4l2_dev;
 spin_lock_init(&veu->lock);
 mutex_init(&veu->fop_lock);
 vdev->lock = &veu->fop_lock;

 video_set_drvdata(vdev, veu);

 veu->dev = &pdev->dev;
 veu->vfmt_out = DEFAULT_OUT_VFMT;
 veu->vfmt_in = DEFAULT_IN_VFMT;

 veu->m2m_dev = v4l2_m2m_init(&sh_veu_m2m_ops);
 if (IS_ERR(veu->m2m_dev)) {
  ret = PTR_ERR(veu->m2m_dev);
  v4l2_err(&veu->v4l2_dev, "Failed to init mem2mem device: %d\n", ret);
  goto em2minit;
 }

 pm_runtime_enable(&pdev->dev);
 pm_runtime_resume(&pdev->dev);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 pm_runtime_suspend(&pdev->dev);
 if (ret < 0)
  goto evidreg;

 return ret;

evidreg:
 pm_runtime_disable(&pdev->dev);
 v4l2_m2m_release(veu->m2m_dev);
em2minit:
 v4l2_device_unregister(&veu->v4l2_dev);
 return ret;
}
