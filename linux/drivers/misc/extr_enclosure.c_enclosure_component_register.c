
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct enclosure_component {int number; struct device cdev; } ;


 int device_register (struct device*) ;
 int put_device (struct device*) ;

int enclosure_component_register(struct enclosure_component *ecomp)
{
 struct device *cdev;
 int err;

 cdev = &ecomp->cdev;
 err = device_register(cdev);
 if (err) {
  ecomp->number = -1;
  put_device(cdev);
  return err;
 }

 return 0;
}
