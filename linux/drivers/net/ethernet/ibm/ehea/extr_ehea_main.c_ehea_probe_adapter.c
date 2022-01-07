
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct ehea_adapter {int list; TYPE_2__* neq; int ** port; int neq_tasklet; int pd; int handle; struct platform_device* ofdev; } ;
struct TYPE_6__ {int ist1; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;


 int EHEA_MAX_ENTRIES_EQ ;
 int EHEA_MAX_PORTS ;
 int EHEA_NEQ ;
 int EHEA_PD_ID ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int adapter_list ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct ehea_adapter* devm_kzalloc (TYPE_4__*,int,int ) ;
 int ehea_create_device_sysfs (struct platform_device*) ;
 TYPE_2__* ehea_create_eq (struct ehea_adapter*,int ,int ,int) ;
 int ehea_destroy_eq (TYPE_2__*) ;
 int ehea_interrupt_neq ;
 int ehea_neq_tasklet ;
 int ehea_register_memory_hooks () ;
 int ehea_remove_device_sysfs (struct platform_device*) ;
 int ehea_sense_adapter_attr (struct ehea_adapter*) ;
 int ehea_setup_ports (struct ehea_adapter*) ;
 int ehea_shutdown_single_port (int *) ;
 int ehea_update_firmware_handles () ;
 int ibmebus_request_irq (int ,int ,int ,char*,struct ehea_adapter*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int * of_get_property (int ,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct ehea_adapter*) ;
 int pr_err (char*) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int ehea_probe_adapter(struct platform_device *dev)
{
 struct ehea_adapter *adapter;
 const u64 *adapter_handle;
 int ret;
 int i;

 ret = ehea_register_memory_hooks();
 if (ret)
  return ret;

 if (!dev || !dev->dev.of_node) {
  pr_err("Invalid ibmebus device probed\n");
  return -EINVAL;
 }

 adapter = devm_kzalloc(&dev->dev, sizeof(*adapter), GFP_KERNEL);
 if (!adapter) {
  ret = -ENOMEM;
  dev_err(&dev->dev, "no mem for ehea_adapter\n");
  goto out;
 }

 list_add(&adapter->list, &adapter_list);

 adapter->ofdev = dev;

 adapter_handle = of_get_property(dev->dev.of_node, "ibm,hea-handle",
      ((void*)0));
 if (adapter_handle)
  adapter->handle = *adapter_handle;

 if (!adapter->handle) {
  dev_err(&dev->dev, "failed getting handle for adapter"
   " '%pOF'\n", dev->dev.of_node);
  ret = -ENODEV;
  goto out_free_ad;
 }

 adapter->pd = EHEA_PD_ID;

 platform_set_drvdata(dev, adapter);




 ret = ehea_sense_adapter_attr(adapter);
 if (ret) {
  dev_err(&dev->dev, "sense_adapter_attr failed: %d\n", ret);
  goto out_free_ad;
 }

 adapter->neq = ehea_create_eq(adapter,
          EHEA_NEQ, EHEA_MAX_ENTRIES_EQ, 1);
 if (!adapter->neq) {
  ret = -EIO;
  dev_err(&dev->dev, "NEQ creation failed\n");
  goto out_free_ad;
 }

 tasklet_init(&adapter->neq_tasklet, ehea_neq_tasklet,
       (unsigned long)adapter);

 ret = ehea_create_device_sysfs(dev);
 if (ret)
  goto out_kill_eq;

 ret = ehea_setup_ports(adapter);
 if (ret) {
  dev_err(&dev->dev, "setup_ports failed\n");
  goto out_rem_dev_sysfs;
 }

 ret = ibmebus_request_irq(adapter->neq->attr.ist1,
      ehea_interrupt_neq, 0,
      "ehea_neq", adapter);
 if (ret) {
  dev_err(&dev->dev, "requesting NEQ IRQ failed\n");
  goto out_shutdown_ports;
 }


 tasklet_hi_schedule(&adapter->neq_tasklet);

 ret = 0;
 goto out;

out_shutdown_ports:
 for (i = 0; i < EHEA_MAX_PORTS; i++)
  if (adapter->port[i]) {
   ehea_shutdown_single_port(adapter->port[i]);
   adapter->port[i] = ((void*)0);
  }

out_rem_dev_sysfs:
 ehea_remove_device_sysfs(dev);

out_kill_eq:
 ehea_destroy_eq(adapter->neq);

out_free_ad:
 list_del(&adapter->list);

out:
 ehea_update_firmware_handles();

 return ret;
}
