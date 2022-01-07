
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int dev; } ;


 void* dev_get_drvdata (int *) ;

void *mei_cldev_get_drvdata(const struct mei_cl_device *cldev)
{
 return dev_get_drvdata(&cldev->dev);
}
