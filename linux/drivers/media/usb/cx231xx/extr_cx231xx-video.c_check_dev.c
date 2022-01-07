
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int state; int dev; } ;


 int DEV_DISCONNECTED ;
 int ENODEV ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int check_dev(struct cx231xx *dev)
{
 if (dev->state & DEV_DISCONNECTED) {
  dev_err(dev->dev, "v4l2 ioctl: device not present\n");
  return -ENODEV;
 }
 return 0;
}
