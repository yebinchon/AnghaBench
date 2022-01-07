
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_client {int bus_added; } ;
struct mei_device {int device_list; int dev; int cl_bus_lock; } ;
struct mei_cl_device {int bus_list; } ;


 int WARN_ON (int) ;
 int dev_dbg (int ,char*,int ) ;
 int list_add_tail (int *,int *) ;
 struct mei_cl_device* mei_cl_bus_dev_alloc (struct mei_device*,struct mei_me_client*) ;
 int mei_me_cl_uuid (struct mei_me_client*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void mei_cl_bus_dev_init(struct mei_device *bus,
    struct mei_me_client *me_cl)
{
 struct mei_cl_device *cldev;

 WARN_ON(!mutex_is_locked(&bus->cl_bus_lock));

 dev_dbg(bus->dev, "initializing %pUl", mei_me_cl_uuid(me_cl));

 if (me_cl->bus_added)
  return;

 cldev = mei_cl_bus_dev_alloc(bus, me_cl);
 if (!cldev)
  return;

 me_cl->bus_added = 1;
 list_add_tail(&cldev->bus_list, &bus->device_list);

}
