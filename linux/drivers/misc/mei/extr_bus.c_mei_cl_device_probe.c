
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_driver {int (* probe ) (struct mei_cl_device*,struct mei_cl_device_id const*) ;} ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int dev; } ;
struct device {int driver; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int dev_err (int *,char*) ;
 int mei_cl_bus_module_get (struct mei_cl_device*) ;
 int mei_cl_bus_module_put (struct mei_cl_device*) ;
 struct mei_cl_device_id* mei_cl_device_find (struct mei_cl_device*,struct mei_cl_driver*) ;
 int stub1 (struct mei_cl_device*,struct mei_cl_device_id const*) ;
 struct mei_cl_device* to_mei_cl_device (struct device*) ;
 struct mei_cl_driver* to_mei_cl_driver (int ) ;

__attribute__((used)) static int mei_cl_device_probe(struct device *dev)
{
 struct mei_cl_device *cldev;
 struct mei_cl_driver *cldrv;
 const struct mei_cl_device_id *id;
 int ret;

 cldev = to_mei_cl_device(dev);
 cldrv = to_mei_cl_driver(dev->driver);

 if (!cldev)
  return 0;

 if (!cldrv || !cldrv->probe)
  return -ENODEV;

 id = mei_cl_device_find(cldev, cldrv);
 if (!id)
  return -ENODEV;

 if (!mei_cl_bus_module_get(cldev)) {
  dev_err(&cldev->dev, "get hw module failed");
  return -ENODEV;
 }

 ret = cldrv->probe(cldev, id);
 if (ret) {
  mei_cl_bus_module_put(cldev);
  return ret;
 }

 __module_get(THIS_MODULE);
 return 0;
}
