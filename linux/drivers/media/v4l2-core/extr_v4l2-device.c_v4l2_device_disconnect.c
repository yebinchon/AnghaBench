
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int * dev; } ;


 struct v4l2_device* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int put_device (int *) ;

void v4l2_device_disconnect(struct v4l2_device *v4l2_dev)
{
 if (v4l2_dev->dev == ((void*)0))
  return;

 if (dev_get_drvdata(v4l2_dev->dev) == v4l2_dev)
  dev_set_drvdata(v4l2_dev->dev, ((void*)0));
 put_device(v4l2_dev->dev);
 v4l2_dev->dev = ((void*)0);
}
