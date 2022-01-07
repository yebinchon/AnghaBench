
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct video_device {int num; int name; int * v4l2_dev; int * lock; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fdp1_dev {int irq; int v4l2_dev; struct clk* m2m_dev; TYPE_1__* dev; int dev_mutex; struct video_device vfd; int clk_rate; struct clk* fcp; struct clk* regs; int device_process_lock; int irqlock; int free_job_list; TYPE_12__* jobs; int hw_job_list; int queued_job_list; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_13__ {int list; } ;


 unsigned int ARRAY_SIZE (TYPE_12__*) ;
 int ENOMEM ;



 int FD1_IP_INTDATA ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int VFL_TYPE_GRABBER ;
 struct clk* clk_get (TYPE_1__*,int *) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_name (TYPE_1__*) ;
 struct clk* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct fdp1_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct fdp1_dev*) ;
 int dprintk (struct fdp1_dev*,char*) ;
 int fdp1_irq_handler ;
 int fdp1_read (struct fdp1_dev*,int ) ;
 struct video_device fdp1_videodev ;
 int list_add (int *,int *) ;
 int m2m_ops ;
 int mutex_init (int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fdp1_dev*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put (TYPE_1__*) ;
 struct clk* rcar_fcp_get (struct device_node*) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,int ,int) ;
 int v4l2_device_register (TYPE_1__*,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ) ;
 struct clk* v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (struct clk*) ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct fdp1_dev*) ;

__attribute__((used)) static int fdp1_probe(struct platform_device *pdev)
{
 struct fdp1_dev *fdp1;
 struct video_device *vfd;
 struct device_node *fcp_node;
 struct resource *res;
 struct clk *clk;
 unsigned int i;

 int ret;
 int hw_version;

 fdp1 = devm_kzalloc(&pdev->dev, sizeof(*fdp1), GFP_KERNEL);
 if (!fdp1)
  return -ENOMEM;

 INIT_LIST_HEAD(&fdp1->free_job_list);
 INIT_LIST_HEAD(&fdp1->queued_job_list);
 INIT_LIST_HEAD(&fdp1->hw_job_list);


 for (i = 0; i < ARRAY_SIZE(fdp1->jobs); i++)
  list_add(&fdp1->jobs[i].list, &fdp1->free_job_list);

 mutex_init(&fdp1->dev_mutex);

 spin_lock_init(&fdp1->irqlock);
 spin_lock_init(&fdp1->device_process_lock);
 fdp1->dev = &pdev->dev;
 platform_set_drvdata(pdev, fdp1);


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fdp1->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(fdp1->regs))
  return PTR_ERR(fdp1->regs);


 fdp1->irq = ret = platform_get_irq(pdev, 0);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot find IRQ\n");
  return ret;
 }

 ret = devm_request_irq(&pdev->dev, fdp1->irq, fdp1_irq_handler, 0,
          dev_name(&pdev->dev), fdp1);
 if (ret) {
  dev_err(&pdev->dev, "cannot claim IRQ %d\n", fdp1->irq);
  return ret;
 }


 fcp_node = of_parse_phandle(pdev->dev.of_node, "renesas,fcp", 0);
 if (fcp_node) {
  fdp1->fcp = rcar_fcp_get(fcp_node);
  of_node_put(fcp_node);
  if (IS_ERR(fdp1->fcp)) {
   dev_dbg(&pdev->dev, "FCP not found (%ld)\n",
    PTR_ERR(fdp1->fcp));
   return PTR_ERR(fdp1->fcp);
  }
 }


 clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 fdp1->clk_rate = clk_get_rate(clk);
 clk_put(clk);


 ret = v4l2_device_register(&pdev->dev, &fdp1->v4l2_dev);
 if (ret) {
  v4l2_err(&fdp1->v4l2_dev, "Failed to register video device\n");
  return ret;
 }


 fdp1->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(fdp1->m2m_dev)) {
  v4l2_err(&fdp1->v4l2_dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(fdp1->m2m_dev);
  goto unreg_dev;
 }


 fdp1->vfd = fdp1_videodev;
 vfd = &fdp1->vfd;
 vfd->lock = &fdp1->dev_mutex;
 vfd->v4l2_dev = &fdp1->v4l2_dev;
 video_set_drvdata(vfd, fdp1);
 strscpy(vfd->name, fdp1_videodev.name, sizeof(vfd->name));

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  v4l2_err(&fdp1->v4l2_dev, "Failed to register video device\n");
  goto release_m2m;
 }

 v4l2_info(&fdp1->v4l2_dev, "Device registered as /dev/video%d\n",
    vfd->num);


 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(fdp1->dev);

 hw_version = fdp1_read(fdp1, FD1_IP_INTDATA);
 switch (hw_version) {
 case 130:
  dprintk(fdp1, "FDP1 Version R-Car H3 ES1\n");
  break;
 case 128:
  dprintk(fdp1, "FDP1 Version R-Car M3-W\n");
  break;
 case 131:
  dprintk(fdp1, "FDP1 Version R-Car H3\n");
  break;
 case 129:
  dprintk(fdp1, "FDP1 Version R-Car M3N\n");
  break;
 case 132:
  dprintk(fdp1, "FDP1 Version R-Car E3\n");
  break;
 default:
  dev_err(fdp1->dev, "FDP1 Unidentifiable (0x%08x)\n",
   hw_version);
 }


 pm_runtime_put(fdp1->dev);

 return 0;

release_m2m:
 v4l2_m2m_release(fdp1->m2m_dev);

unreg_dev:
 v4l2_device_unregister(&fdp1->v4l2_dev);

 return ret;
}
