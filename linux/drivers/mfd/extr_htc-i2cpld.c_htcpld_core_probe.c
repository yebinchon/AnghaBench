
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct htcpld_data {scalar_t__ int_reset_gpio_lo; scalar_t__ int_reset_gpio_hi; int chained_irq; } ;
struct htcpld_core_platform_data {scalar_t__ int_reset_gpio_lo; scalar_t__ int_reset_gpio_hi; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 struct htcpld_core_platform_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*,...) ;
 int device_init_wakeup (struct device*,int ) ;
 struct htcpld_data* devm_kzalloc (struct device*,int,int ) ;
 int gpio_request (scalar_t__,char*) ;
 int gpio_set_value (scalar_t__,int) ;
 int htcpld_handler ;
 int htcpld_setup_chips (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct htcpld_data*) ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct htcpld_data*) ;

__attribute__((used)) static int htcpld_core_probe(struct platform_device *pdev)
{
 struct htcpld_data *htcpld;
 struct device *dev = &pdev->dev;
 struct htcpld_core_platform_data *pdata;
 struct resource *res;
 int ret = 0;

 if (!dev)
  return -ENODEV;

 pdata = dev_get_platdata(dev);
 if (!pdata) {
  dev_warn(dev, "Platform data not found for htcpld core!\n");
  return -ENXIO;
 }

 htcpld = devm_kzalloc(dev, sizeof(struct htcpld_data), GFP_KERNEL);
 if (!htcpld)
  return -ENOMEM;


 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res) {
  int flags;
  htcpld->chained_irq = res->start;


  flags = IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
   IRQF_ONESHOT;
  ret = request_threaded_irq(htcpld->chained_irq,
        ((void*)0), htcpld_handler,
        flags, pdev->name, htcpld);
  if (ret) {
   dev_warn(dev, "Unable to setup chained irq handler: %d\n", ret);
   return ret;
  } else
   device_init_wakeup(dev, 0);
 }


 platform_set_drvdata(pdev, htcpld);


 ret = htcpld_setup_chips(pdev);
 if (ret)
  return ret;


 if (pdata->int_reset_gpio_hi) {
  ret = gpio_request(pdata->int_reset_gpio_hi, "htcpld-core");
  if (ret) {




   dev_warn(dev, "Unable to request int_reset_gpio_hi -- interrupts may not work\n");
   htcpld->int_reset_gpio_hi = 0;
  } else {
   htcpld->int_reset_gpio_hi = pdata->int_reset_gpio_hi;
   gpio_set_value(htcpld->int_reset_gpio_hi, 1);
  }
 }

 if (pdata->int_reset_gpio_lo) {
  ret = gpio_request(pdata->int_reset_gpio_lo, "htcpld-core");
  if (ret) {




   dev_warn(dev, "Unable to request int_reset_gpio_lo -- interrupts may not work\n");
   htcpld->int_reset_gpio_lo = 0;
  } else {
   htcpld->int_reset_gpio_lo = pdata->int_reset_gpio_lo;
   gpio_set_value(htcpld->int_reset_gpio_lo, 0);
  }
 }

 dev_info(dev, "Initialized successfully\n");
 return 0;
}
