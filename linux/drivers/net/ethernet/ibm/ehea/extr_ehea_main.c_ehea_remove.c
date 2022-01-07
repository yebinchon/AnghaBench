
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct ehea_adapter {int list; TYPE_2__* neq; int neq_tasklet; int ** port; } ;
struct TYPE_3__ {int ist1; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;


 int EHEA_MAX_PORTS ;
 int ehea_destroy_eq (TYPE_2__*) ;
 int ehea_remove_adapter_mr (struct ehea_adapter*) ;
 int ehea_remove_device_sysfs (struct platform_device*) ;
 int ehea_shutdown_single_port (int *) ;
 int ehea_update_firmware_handles () ;
 int ibmebus_free_irq (int ,struct ehea_adapter*) ;
 int list_del (int *) ;
 struct ehea_adapter* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int ehea_remove(struct platform_device *dev)
{
 struct ehea_adapter *adapter = platform_get_drvdata(dev);
 int i;

 for (i = 0; i < EHEA_MAX_PORTS; i++)
  if (adapter->port[i]) {
   ehea_shutdown_single_port(adapter->port[i]);
   adapter->port[i] = ((void*)0);
  }

 ehea_remove_device_sysfs(dev);

 ibmebus_free_irq(adapter->neq->attr.ist1, adapter);
 tasklet_kill(&adapter->neq_tasklet);

 ehea_destroy_eq(adapter->neq);
 ehea_remove_adapter_mr(adapter);
 list_del(&adapter->list);

 ehea_update_firmware_handles();

 return 0;
}
