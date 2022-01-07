
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dev; int input_dev; } ;


 int THIS_MODULE ;
 int input_free_device (int ) ;
 int module_put (int ) ;
 int put_device (int *) ;

void rc_free_device(struct rc_dev *dev)
{
 if (!dev)
  return;

 input_free_device(dev->input_dev);

 put_device(&dev->dev);




 module_put(THIS_MODULE);
}
