
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_driver {int dummy; } ;
struct maple_device {struct maple_driver* driver; int fileerr_handler; int can_unload; } ;
struct device {int driver; } ;


 struct maple_device* to_maple_dev (struct device*) ;
 struct maple_driver* to_maple_driver (int ) ;
 int vmu_can_unload ;
 int vmu_connect (struct maple_device*) ;
 int vmu_file_error ;

__attribute__((used)) static int probe_maple_vmu(struct device *dev)
{
 int error;
 struct maple_device *mdev = to_maple_dev(dev);
 struct maple_driver *mdrv = to_maple_driver(dev->driver);

 mdev->can_unload = vmu_can_unload;
 mdev->fileerr_handler = vmu_file_error;
 mdev->driver = mdrv;

 error = vmu_connect(mdev);
 if (error)
  return error;

 return 0;
}
