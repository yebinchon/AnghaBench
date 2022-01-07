
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int dev; } ;


 int dev_set_drvdata (int *,void*) ;

void mei_cldev_set_drvdata(struct mei_cl_device *cldev, void *data)
{
 dev_set_drvdata(&cldev->dev, data);
}
