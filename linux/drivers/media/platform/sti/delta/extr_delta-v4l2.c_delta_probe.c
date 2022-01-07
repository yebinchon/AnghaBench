
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct delta_dev {int v4l2_dev; int work_queue; TYPE_1__* vdev; struct device* dev; int * clk_flash_promip; int * clk_st231; int * clk_delta; int lock; struct platform_device* pdev; } ;
struct TYPE_2__ {int num; int name; } ;


 int DELTA_HW_AUTOSUSPEND_DELAY_MS ;
 int DELTA_NAME ;
 int DELTA_PREFIX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int create_workqueue (int ) ;
 int delta_ipc_init (struct delta_dev*) ;
 int delta_register_device (struct delta_dev*) ;
 int destroy_workqueue (int ) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,int ,int ,int ) ;
 void* devm_clk_get (struct device*,char*) ;
 struct delta_dev* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct delta_dev*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int register_decoders (struct delta_dev*) ;
 int register_formats (struct delta_dev*) ;
 int v4l2_device_register (struct device*,int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int delta_probe(struct platform_device *pdev)
{
 struct delta_dev *delta;
 struct device *dev = &pdev->dev;
 int ret;

 delta = devm_kzalloc(dev, sizeof(*delta), GFP_KERNEL);
 if (!delta) {
  ret = -ENOMEM;
  goto err;
 }

 delta->dev = dev;
 delta->pdev = pdev;
 platform_set_drvdata(pdev, delta);

 mutex_init(&delta->lock);


 delta->clk_delta = devm_clk_get(dev, "delta");
 if (IS_ERR(delta->clk_delta)) {
  dev_dbg(dev, "%s can't get delta clock\n", DELTA_PREFIX);
  delta->clk_delta = ((void*)0);
 }

 delta->clk_st231 = devm_clk_get(dev, "delta-st231");
 if (IS_ERR(delta->clk_st231)) {
  dev_dbg(dev, "%s can't get delta-st231 clock\n", DELTA_PREFIX);
  delta->clk_st231 = ((void*)0);
 }

 delta->clk_flash_promip = devm_clk_get(dev, "delta-flash-promip");
 if (IS_ERR(delta->clk_flash_promip)) {
  dev_dbg(dev, "%s can't get delta-flash-promip clock\n",
   DELTA_PREFIX);
  delta->clk_flash_promip = ((void*)0);
 }


 pm_runtime_set_autosuspend_delay(dev, DELTA_HW_AUTOSUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_enable(dev);


 ret = delta_ipc_init(delta);
 if (ret) {
  dev_err(delta->dev, "%s failed to initialize firmware ipc channel\n",
   DELTA_PREFIX);
  goto err;
 }


 register_decoders(delta);


 register_formats(delta);


 ret = v4l2_device_register(dev, &delta->v4l2_dev);
 if (ret) {
  dev_err(delta->dev, "%s failed to register V4L2 device\n",
   DELTA_PREFIX);
  goto err;
 }

 delta->work_queue = create_workqueue(DELTA_NAME);
 if (!delta->work_queue) {
  dev_err(delta->dev, "%s failed to allocate work queue\n",
   DELTA_PREFIX);
  ret = -ENOMEM;
  goto err_v4l2;
 }


 ret = delta_register_device(delta);
 if (ret)
  goto err_work_queue;

 dev_info(dev, "%s %s registered as /dev/video%d\n",
   DELTA_PREFIX, delta->vdev->name, delta->vdev->num);

 return 0;

err_work_queue:
 destroy_workqueue(delta->work_queue);
err_v4l2:
 v4l2_device_unregister(&delta->v4l2_dev);
err:
 return ret;
}
