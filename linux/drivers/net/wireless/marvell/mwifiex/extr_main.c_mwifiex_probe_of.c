
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int irq_wakeup; scalar_t__ dt_node; struct device* dev; } ;
struct device {scalar_t__ of_node; } ;


 int IRQF_TRIGGER_LOW ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ device_init_wakeup (struct device*,int) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct mwifiex_adapter*) ;
 int disable_irq (int) ;
 int irq_of_parse_and_map (scalar_t__,int ) ;
 int mwifiex_irq_wakeup_handler ;

__attribute__((used)) static void mwifiex_probe_of(struct mwifiex_adapter *adapter)
{
 int ret;
 struct device *dev = adapter->dev;

 if (!dev->of_node)
  goto err_exit;

 adapter->dt_node = dev->of_node;
 adapter->irq_wakeup = irq_of_parse_and_map(adapter->dt_node, 0);
 if (!adapter->irq_wakeup) {
  dev_dbg(dev, "fail to parse irq_wakeup from device tree\n");
  goto err_exit;
 }

 ret = devm_request_irq(dev, adapter->irq_wakeup,
          mwifiex_irq_wakeup_handler, IRQF_TRIGGER_LOW,
          "wifi_wake", adapter);
 if (ret) {
  dev_err(dev, "Failed to request irq_wakeup %d (%d)\n",
   adapter->irq_wakeup, ret);
  goto err_exit;
 }

 disable_irq(adapter->irq_wakeup);
 if (device_init_wakeup(dev, 1)) {
  dev_err(dev, "fail to init wakeup for mwifiex\n");
  goto err_exit;
 }
 return;

err_exit:
 adapter->irq_wakeup = -1;
}
