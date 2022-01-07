
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mei_cl_device {TYPE_3__* bus; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void mei_cl_bus_module_put(struct mei_cl_device *cldev)
{
 module_put(cldev->bus->dev->driver->owner);
}
