
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_cl_device {int dev; scalar_t__ is_added; int bus_list; TYPE_1__* bus; } ;
struct TYPE_2__ {int cl_bus_lock; } ;


 int WARN_ON (int) ;
 int device_del (int *) ;
 int list_del_init (int *) ;
 int mutex_is_locked (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void mei_cl_bus_dev_destroy(struct mei_cl_device *cldev)
{

 WARN_ON(!mutex_is_locked(&cldev->bus->cl_bus_lock));

 if (!cldev->is_added)
  return;

 device_del(&cldev->dev);

 list_del_init(&cldev->bus_list);

 cldev->is_added = 0;
 put_device(&cldev->dev);
}
