
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbus_device {int dev; } ;


 int device_unregister (int *) ;

void mbus_unregister_device(struct mbus_device *mbdev)
{
 device_unregister(&mbdev->dev);
}
