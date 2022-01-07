
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int dev; scalar_t__ is_added; } ;


 int device_release_driver (int *) ;

__attribute__((used)) static void mei_cl_bus_dev_stop(struct mei_cl_device *cldev)
{
 if (cldev->is_added)
  device_release_driver(&cldev->dev);
}
