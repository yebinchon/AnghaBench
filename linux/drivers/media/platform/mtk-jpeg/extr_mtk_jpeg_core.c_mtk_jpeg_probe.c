
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct mtk_jpeg_dev {int v4l2_dev; int m2m_dev; TYPE_1__* dec_vdev; int lock; int dec_reg_base; int * dev; int hw_lock; } ;
struct TYPE_5__ {int minor; int device_caps; int num; int vfl_dir; int * v4l2_dev; int * lock; int (* release ) (TYPE_1__*) ;int * ioctl_ops; int * fops; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 char* MTK_JPEG_NAME ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int VIDEO_MAJOR ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct mtk_jpeg_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct mtk_jpeg_dev*) ;
 int mtk_jpeg_clk_init (struct mtk_jpeg_dev*) ;
 int mtk_jpeg_dec_irq ;
 int mtk_jpeg_fops ;
 int mtk_jpeg_ioctl_ops ;
 int mtk_jpeg_m2m_ops ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_jpeg_dev*) ;
 int pm_runtime_enable (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ,int ,int) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 TYPE_1__* video_device_alloc () ;
 int video_device_release (TYPE_1__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct mtk_jpeg_dev*) ;

__attribute__((used)) static int mtk_jpeg_probe(struct platform_device *pdev)
{
 struct mtk_jpeg_dev *jpeg;
 struct resource *res;
 int dec_irq;
 int ret;

 jpeg = devm_kzalloc(&pdev->dev, sizeof(*jpeg), GFP_KERNEL);
 if (!jpeg)
  return -ENOMEM;

 mutex_init(&jpeg->lock);
 spin_lock_init(&jpeg->hw_lock);
 jpeg->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 jpeg->dec_reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(jpeg->dec_reg_base)) {
  ret = PTR_ERR(jpeg->dec_reg_base);
  return ret;
 }

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 dec_irq = platform_get_irq(pdev, 0);
 if (!res || dec_irq < 0) {
  dev_err(&pdev->dev, "Failed to get dec_irq %d.\n", dec_irq);
  ret = -EINVAL;
  return ret;
 }

 ret = devm_request_irq(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
          pdev->name, jpeg);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
   dec_irq, ret);
  ret = -EINVAL;
  goto err_req_irq;
 }

 ret = mtk_jpeg_clk_init(jpeg);
 if (ret) {
  dev_err(&pdev->dev, "Failed to init clk, err %d\n", ret);
  goto err_clk_init;
 }

 ret = v4l2_device_register(&pdev->dev, &jpeg->v4l2_dev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register v4l2 device\n");
  ret = -EINVAL;
  goto err_dev_register;
 }

 jpeg->m2m_dev = v4l2_m2m_init(&mtk_jpeg_m2m_ops);
 if (IS_ERR(jpeg->m2m_dev)) {
  v4l2_err(&jpeg->v4l2_dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(jpeg->m2m_dev);
  goto err_m2m_init;
 }

 jpeg->dec_vdev = video_device_alloc();
 if (!jpeg->dec_vdev) {
  ret = -ENOMEM;
  goto err_dec_vdev_alloc;
 }
 snprintf(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
   "%s-dec", MTK_JPEG_NAME);
 jpeg->dec_vdev->fops = &mtk_jpeg_fops;
 jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
 jpeg->dec_vdev->minor = -1;
 jpeg->dec_vdev->release = video_device_release;
 jpeg->dec_vdev->lock = &jpeg->lock;
 jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
 jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
 jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
          V4L2_CAP_VIDEO_M2M_MPLANE;

 ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
 if (ret) {
  v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
  goto err_dec_vdev_register;
 }

 video_set_drvdata(jpeg->dec_vdev, jpeg);
 v4l2_info(&jpeg->v4l2_dev,
    "decoder device registered as /dev/video%d (%d,%d)\n",
    jpeg->dec_vdev->num, VIDEO_MAJOR, jpeg->dec_vdev->minor);

 platform_set_drvdata(pdev, jpeg);

 pm_runtime_enable(&pdev->dev);

 return 0;

err_dec_vdev_register:
 video_device_release(jpeg->dec_vdev);

err_dec_vdev_alloc:
 v4l2_m2m_release(jpeg->m2m_dev);

err_m2m_init:
 v4l2_device_unregister(&jpeg->v4l2_dev);

err_dev_register:

err_clk_init:

err_req_irq:

 return ret;
}
