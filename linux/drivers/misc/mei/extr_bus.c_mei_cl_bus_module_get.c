
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


 int try_module_get (int ) ;

__attribute__((used)) static bool mei_cl_bus_module_get(struct mei_cl_device *cldev)
{
 return try_module_get(cldev->bus->dev->driver->owner);
}
