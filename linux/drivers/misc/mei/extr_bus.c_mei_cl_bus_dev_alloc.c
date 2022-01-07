
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_me_client {int dummy; } ;
struct mei_device {int dev; } ;
struct TYPE_2__ {int * type; int * bus; int parent; } ;
struct mei_cl_device {int bus_list; scalar_t__ is_added; struct mei_cl* cl; int me_cl; int bus; TYPE_1__ dev; } ;
struct mei_cl {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int device_initialize (TYPE_1__*) ;
 int kfree (struct mei_cl_device*) ;
 struct mei_cl_device* kzalloc (int,int ) ;
 struct mei_cl* mei_cl_allocate (struct mei_device*) ;
 int mei_cl_bus_set_name (struct mei_cl_device*) ;
 int mei_cl_bus_type ;
 int mei_cl_device_type ;
 int mei_dev_bus_get (struct mei_device*) ;
 int mei_me_cl_get (struct mei_me_client*) ;

__attribute__((used)) static struct mei_cl_device *mei_cl_bus_dev_alloc(struct mei_device *bus,
        struct mei_me_client *me_cl)
{
 struct mei_cl_device *cldev;
 struct mei_cl *cl;

 cldev = kzalloc(sizeof(struct mei_cl_device), GFP_KERNEL);
 if (!cldev)
  return ((void*)0);

 cl = mei_cl_allocate(bus);
 if (!cl) {
  kfree(cldev);
  return ((void*)0);
 }

 device_initialize(&cldev->dev);
 cldev->dev.parent = bus->dev;
 cldev->dev.bus = &mei_cl_bus_type;
 cldev->dev.type = &mei_cl_device_type;
 cldev->bus = mei_dev_bus_get(bus);
 cldev->me_cl = mei_me_cl_get(me_cl);
 cldev->cl = cl;
 mei_cl_bus_set_name(cldev);
 cldev->is_added = 0;
 INIT_LIST_HEAD(&cldev->bus_list);

 return cldev;
}
