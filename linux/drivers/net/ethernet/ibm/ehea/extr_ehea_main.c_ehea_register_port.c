
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int release; int * bus; int * parent; int of_node; } ;
struct TYPE_7__ {struct device dev; } ;
struct ehea_port {TYPE_3__ ofdev; TYPE_2__* adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ofdev; } ;
struct TYPE_5__ {int dev; } ;


 int dev_attr_log_port_id ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_create_file (struct device*,int *) ;
 int ibmebus_bus_type ;
 int logical_port_release ;
 int of_device_register (TYPE_3__*) ;
 int of_device_unregister (TYPE_3__*) ;
 int of_node_get (struct device_node*) ;
 int port_name_cnt ;
 int pr_err (char*,int) ;

__attribute__((used)) static struct device *ehea_register_port(struct ehea_port *port,
      struct device_node *dn)
{
 int ret;

 port->ofdev.dev.of_node = of_node_get(dn);
 port->ofdev.dev.parent = &port->adapter->ofdev->dev;
 port->ofdev.dev.bus = &ibmebus_bus_type;

 dev_set_name(&port->ofdev.dev, "port%d", port_name_cnt++);
 port->ofdev.dev.release = logical_port_release;

 ret = of_device_register(&port->ofdev);
 if (ret) {
  pr_err("failed to register device. ret=%d\n", ret);
  goto out;
 }

 ret = device_create_file(&port->ofdev.dev, &dev_attr_log_port_id);
 if (ret) {
  pr_err("failed to register attributes, ret=%d\n", ret);
  goto out_unreg_of_dev;
 }

 return &port->ofdev.dev;

out_unreg_of_dev:
 of_device_unregister(&port->ofdev);
out:
 return ((void*)0);
}
