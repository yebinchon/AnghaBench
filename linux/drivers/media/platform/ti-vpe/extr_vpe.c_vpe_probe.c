
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_dev {int v4l2_dev; int m2m_dev; int * vpdma; int vpdma_data; int csc; int sc; int base; TYPE_1__* res; int dev_mutex; int num_instances; int lock; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int start; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SZ_32K ;
 int VPE_MODULE_NAME ;
 int VPE_PID ;
 int VPE_PID_FUNC_MASK ;
 int VPE_PID_FUNC_SHIFT ;
 int atomic_set (int *,int ) ;
 int csc_create (struct platform_device*,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct vpe_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct vpe_dev*) ;
 int m2m_ops ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 TYPE_1__* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct vpe_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int read_field_reg (struct vpe_dev*,int ,int ,int ) ;
 int sc_create (struct platform_device*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int vpdma_create (struct platform_device*,int *,int ) ;
 int vpe_dbg (struct vpe_dev*,char*,int) ;
 int vpe_err (struct vpe_dev*,char*) ;
 int vpe_fw_cb ;
 int vpe_irq ;
 int vpe_runtime_get (struct platform_device*) ;
 int vpe_runtime_put (struct platform_device*) ;
 int vpe_set_clock_enable (struct vpe_dev*,int) ;
 int vpe_top_reset (struct vpe_dev*) ;
 int vpe_top_vpdma_reset (struct vpe_dev*) ;

__attribute__((used)) static int vpe_probe(struct platform_device *pdev)
{
 struct vpe_dev *dev;
 int ret, irq, func;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 spin_lock_init(&dev->lock);

 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret)
  return ret;

 atomic_set(&dev->num_instances, 0);
 mutex_init(&dev->dev_mutex);

 dev->res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
   "vpe_top");






 dev->base = devm_ioremap(&pdev->dev, dev->res->start, SZ_32K);
 if (!dev->base) {
  ret = -ENOMEM;
  goto v4l2_dev_unreg;
 }

 irq = platform_get_irq(pdev, 0);
 ret = devm_request_irq(&pdev->dev, irq, vpe_irq, 0, VPE_MODULE_NAME,
   dev);
 if (ret)
  goto v4l2_dev_unreg;

 platform_set_drvdata(pdev, dev);

 dev->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(dev->m2m_dev)) {
  vpe_err(dev, "Failed to init mem2mem device\n");
  ret = PTR_ERR(dev->m2m_dev);
  goto v4l2_dev_unreg;
 }

 pm_runtime_enable(&pdev->dev);

 ret = vpe_runtime_get(pdev);
 if (ret)
  goto rel_m2m;


 vpe_set_clock_enable(dev, 1);

 vpe_top_reset(dev);

 func = read_field_reg(dev, VPE_PID, VPE_PID_FUNC_MASK,
  VPE_PID_FUNC_SHIFT);
 vpe_dbg(dev, "VPE PID function %x\n", func);

 vpe_top_vpdma_reset(dev);

 dev->sc = sc_create(pdev, "sc");
 if (IS_ERR(dev->sc)) {
  ret = PTR_ERR(dev->sc);
  goto runtime_put;
 }

 dev->csc = csc_create(pdev, "csc");
 if (IS_ERR(dev->csc)) {
  ret = PTR_ERR(dev->csc);
  goto runtime_put;
 }

 dev->vpdma = &dev->vpdma_data;
 ret = vpdma_create(pdev, dev->vpdma, vpe_fw_cb);
 if (ret)
  goto runtime_put;

 return 0;

runtime_put:
 vpe_runtime_put(pdev);
rel_m2m:
 pm_runtime_disable(&pdev->dev);
 v4l2_m2m_release(dev->m2m_dev);
v4l2_dev_unreg:
 v4l2_device_unregister(&dev->v4l2_dev);

 return ret;
}
