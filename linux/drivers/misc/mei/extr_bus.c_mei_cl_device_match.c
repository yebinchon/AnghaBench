
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_driver {int id_table; } ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int do_match; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct mei_cl_device_id* mei_cl_device_find (struct mei_cl_device*,struct mei_cl_driver*) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;
 struct mei_cl_driver* to_mei_cl_driver (struct device_driver*) ;

__attribute__((used)) static int mei_cl_device_match(struct device *dev, struct device_driver *drv)
{
 struct mei_cl_device *cldev = to_mei_cl_device(dev);
 struct mei_cl_driver *cldrv = to_mei_cl_driver(drv);
 const struct mei_cl_device_id *found_id;

 if (!cldev)
  return 0;

 if (!cldev->do_match)
  return 0;

 if (!cldrv || !cldrv->id_table)
  return 0;

 found_id = mei_cl_device_find(cldev, cldrv);
 if (found_id)
  return 1;

 return 0;
}
