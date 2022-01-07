
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hva_dev {int v4l2_dev; int work_queue; TYPE_1__* vdev; int lock; struct platform_device* pdev; struct device* dev; } ;
struct TYPE_2__ {int num; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HVA_NAME ;
 int HVA_PREFIX ;
 int create_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int dev_info (struct device*,char*,int ,int ,int ) ;
 struct hva_dev* devm_kzalloc (struct device*,int,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int hva_debugfs_create (struct hva_dev*) ;
 int hva_debugfs_remove (struct hva_dev*) ;
 int hva_hw_probe (struct platform_device*,struct hva_dev*) ;
 int hva_hw_remove (struct hva_dev*) ;
 int hva_register_device (struct hva_dev*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct hva_dev*) ;
 int register_encoders (struct hva_dev*) ;
 int register_formats (struct hva_dev*) ;
 int v4l2_device_register (struct device*,int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int hva_probe(struct platform_device *pdev)
{
 struct hva_dev *hva;
 struct device *dev = &pdev->dev;
 int ret;

 hva = devm_kzalloc(dev, sizeof(*hva), GFP_KERNEL);
 if (!hva) {
  ret = -ENOMEM;
  goto err;
 }

 ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 hva->dev = dev;
 hva->pdev = pdev;
 platform_set_drvdata(pdev, hva);

 mutex_init(&hva->lock);


 ret = hva_hw_probe(pdev, hva);
 if (ret)
  goto err;


 register_encoders(hva);


 register_formats(hva);


 ret = v4l2_device_register(dev, &hva->v4l2_dev);
 if (ret) {
  dev_err(dev, "%s %s failed to register V4L2 device\n",
   HVA_PREFIX, HVA_NAME);
  goto err_hw;
 }





 hva->work_queue = create_workqueue(HVA_NAME);
 if (!hva->work_queue) {
  dev_err(dev, "%s %s failed to allocate work queue\n",
   HVA_PREFIX, HVA_NAME);
  ret = -ENOMEM;
  goto err_v4l2;
 }


 ret = hva_register_device(hva);
 if (ret)
  goto err_work_queue;

 dev_info(dev, "%s %s registered as /dev/video%d\n", HVA_PREFIX,
   HVA_NAME, hva->vdev->num);

 return 0;

err_work_queue:
 destroy_workqueue(hva->work_queue);
err_v4l2:



 v4l2_device_unregister(&hva->v4l2_dev);
err_hw:
 hva_hw_remove(hva);
err:
 return ret;
}
