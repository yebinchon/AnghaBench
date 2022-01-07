
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct video_device {int device_caps; int num; int * v4l2_dev; int * lock; int flags; } ;
struct resource {int start; } ;
struct TYPE_11__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct of_device_id {scalar_t__ data; } ;
struct g2d_variant {int dummy; } ;
struct g2d_dev {void* clk; void* gate; int v4l2_dev; struct video_device* vfd; struct g2d_variant* variant; void* m2m_dev; int mutex; int irq; void* regs; int num_inst; int ctrl_lock; } ;
struct TYPE_12__ {int stride; int width; TYPE_1__* fmt; } ;
struct TYPE_10__ {int depth; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M ;
 int V4L2_FL_QUIRK_INVERTED_CROP ;
 int VFL_TYPE_GRABBER ;
 int atomic_set (int *,int ) ;
 void* clk_get (TYPE_2__*,char*) ;
 int clk_prepare (void*) ;
 int clk_put (void*) ;
 int clk_unprepare (void*) ;
 TYPE_8__ def_frame ;
 int dev_err (TYPE_2__*,char*) ;
 void* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct g2d_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int ,int ,int ,int ,struct g2d_dev*) ;
 int exynos_g2d_match ;
 int g2d_isr ;
 int g2d_m2m_ops ;
 struct video_device g2d_videodev ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct g2d_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (TYPE_2__*,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ) ;
 void* v4l2_m2m_init (int *) ;
 int vb2_dma_contig_set_max_seg_size (TYPE_2__*,int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct g2d_dev*) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static int g2d_probe(struct platform_device *pdev)
{
 struct g2d_dev *dev;
 struct video_device *vfd;
 struct resource *res;
 const struct of_device_id *of_id;
 int ret = 0;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 spin_lock_init(&dev->ctrl_lock);
 mutex_init(&dev->mutex);
 atomic_set(&dev->num_inst, 0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 dev->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dev->regs))
  return PTR_ERR(dev->regs);

 dev->clk = clk_get(&pdev->dev, "sclk_fimg2d");
 if (IS_ERR(dev->clk)) {
  dev_err(&pdev->dev, "failed to get g2d clock\n");
  return -ENXIO;
 }

 ret = clk_prepare(dev->clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to prepare g2d clock\n");
  goto put_clk;
 }

 dev->gate = clk_get(&pdev->dev, "fimg2d");
 if (IS_ERR(dev->gate)) {
  dev_err(&pdev->dev, "failed to get g2d clock gate\n");
  ret = -ENXIO;
  goto unprep_clk;
 }

 ret = clk_prepare(dev->gate);
 if (ret) {
  dev_err(&pdev->dev, "failed to prepare g2d clock gate\n");
  goto put_clk_gate;
 }

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev, "failed to find IRQ\n");
  ret = -ENXIO;
  goto unprep_clk_gate;
 }

 dev->irq = res->start;

 ret = devm_request_irq(&pdev->dev, dev->irq, g2d_isr,
      0, pdev->name, dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to install IRQ\n");
  goto unprep_clk_gate;
 }

 vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));

 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret)
  goto unprep_clk_gate;
 vfd = video_device_alloc();
 if (!vfd) {
  v4l2_err(&dev->v4l2_dev, "Failed to allocate video device\n");
  ret = -ENOMEM;
  goto unreg_v4l2_dev;
 }
 *vfd = g2d_videodev;
 set_bit(V4L2_FL_QUIRK_INVERTED_CROP, &vfd->flags);
 vfd->lock = &dev->mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->device_caps = V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING;
 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  v4l2_err(&dev->v4l2_dev, "Failed to register video device\n");
  goto rel_vdev;
 }
 video_set_drvdata(vfd, dev);
 dev->vfd = vfd;
 v4l2_info(&dev->v4l2_dev, "device registered as /dev/video%d\n",
        vfd->num);
 platform_set_drvdata(pdev, dev);
 dev->m2m_dev = v4l2_m2m_init(&g2d_m2m_ops);
 if (IS_ERR(dev->m2m_dev)) {
  v4l2_err(&dev->v4l2_dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(dev->m2m_dev);
  goto unreg_video_dev;
 }

 def_frame.stride = (def_frame.width * def_frame.fmt->depth) >> 3;

 of_id = of_match_node(exynos_g2d_match, pdev->dev.of_node);
 if (!of_id) {
  ret = -ENODEV;
  goto unreg_video_dev;
 }
 dev->variant = (struct g2d_variant *)of_id->data;

 return 0;

unreg_video_dev:
 video_unregister_device(dev->vfd);
rel_vdev:
 video_device_release(vfd);
unreg_v4l2_dev:
 v4l2_device_unregister(&dev->v4l2_dev);
unprep_clk_gate:
 clk_unprepare(dev->gate);
put_clk_gate:
 clk_put(dev->gate);
unprep_clk:
 clk_unprepare(dev->clk);
put_clk:
 clk_put(dev->clk);

 return ret;
}
