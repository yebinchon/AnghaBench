
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; int * fops; int name; int minor; } ;
struct xsdfec_dev {scalar_t__ irq; int dev_id; int clks; TYPE_1__ miscdev; int dev_name; int waitq; int regs; struct device* dev; int error_data_lock; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int DEV_NAME_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int MISC_DYNAMIC_MINOR ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_nrs ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct xsdfec_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,scalar_t__,int *,int ,int ,char*,struct xsdfec_dev*) ;
 int ida_alloc (int *,int ) ;
 int ida_free (int *,int) ;
 int init_waitqueue_head (int *) ;
 int misc_register (TYPE_1__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xsdfec_dev*) ;
 int snprintf (int ,int ,char*,int) ;
 int spin_lock_init (int *) ;
 int update_config_from_hw (struct xsdfec_dev*) ;
 int xsdfec_clk_init (struct platform_device*,int *) ;
 int xsdfec_disable_all_clks (int *) ;
 int xsdfec_fops ;
 int xsdfec_irq_thread ;
 int xsdfec_parse_of (struct xsdfec_dev*) ;

__attribute__((used)) static int xsdfec_probe(struct platform_device *pdev)
{
 struct xsdfec_dev *xsdfec;
 struct device *dev;
 struct resource *res;
 int err;
 bool irq_enabled = 1;

 xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
 if (!xsdfec)
  return -ENOMEM;

 xsdfec->dev = &pdev->dev;
 spin_lock_init(&xsdfec->error_data_lock);

 err = xsdfec_clk_init(pdev, &xsdfec->clks);
 if (err)
  return err;

 dev = xsdfec->dev;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xsdfec->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(xsdfec->regs)) {
  err = PTR_ERR(xsdfec->regs);
  goto err_xsdfec_dev;
 }

 xsdfec->irq = platform_get_irq(pdev, 0);
 if (xsdfec->irq < 0) {
  dev_dbg(dev, "platform_get_irq failed");
  irq_enabled = 0;
 }

 err = xsdfec_parse_of(xsdfec);
 if (err < 0)
  goto err_xsdfec_dev;

 update_config_from_hw(xsdfec);


 platform_set_drvdata(pdev, xsdfec);

 if (irq_enabled) {
  init_waitqueue_head(&xsdfec->waitq);

  err = devm_request_threaded_irq(dev, xsdfec->irq, ((void*)0),
      xsdfec_irq_thread, IRQF_ONESHOT,
      "xilinx-sdfec16", xsdfec);
  if (err < 0) {
   dev_err(dev, "unable to request IRQ%d", xsdfec->irq);
   goto err_xsdfec_dev;
  }
 }

 err = ida_alloc(&dev_nrs, GFP_KERNEL);
 if (err < 0)
  goto err_xsdfec_dev;
 xsdfec->dev_id = err;

 snprintf(xsdfec->dev_name, DEV_NAME_LEN, "xsdfec%d", xsdfec->dev_id);
 xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
 xsdfec->miscdev.name = xsdfec->dev_name;
 xsdfec->miscdev.fops = &xsdfec_fops;
 xsdfec->miscdev.parent = dev;
 err = misc_register(&xsdfec->miscdev);
 if (err) {
  dev_err(dev, "error:%d. Unable to register device", err);
  goto err_xsdfec_ida;
 }
 return 0;

err_xsdfec_ida:
 ida_free(&dev_nrs, xsdfec->dev_id);
err_xsdfec_dev:
 xsdfec_disable_all_clks(&xsdfec->clks);
 return err;
}
