
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_cl_device {int is_added; int dev; int me_cl; TYPE_1__* bus; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int device_add (int *) ;
 int mei_me_cl_uuid (int ) ;
 int mei_me_cl_ver (int ) ;

__attribute__((used)) static int mei_cl_bus_dev_add(struct mei_cl_device *cldev)
{
 int ret;

 dev_dbg(cldev->bus->dev, "adding %pUL:%02X\n",
  mei_me_cl_uuid(cldev->me_cl),
  mei_me_cl_ver(cldev->me_cl));
 ret = device_add(&cldev->dev);
 if (!ret)
  cldev->is_added = 1;

 return ret;
}
