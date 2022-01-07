
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ehea_port {TYPE_1__ ofdev; } ;


 int dev_attr_log_port_id ;
 int device_remove_file (int *,int *) ;
 int of_device_unregister (TYPE_1__*) ;

__attribute__((used)) static void ehea_unregister_port(struct ehea_port *port)
{
 device_remove_file(&port->ofdev.dev, &dev_attr_log_port_id);
 of_device_unregister(&port->ofdev);
}
