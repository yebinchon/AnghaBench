
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dev_state; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int EIO ;
 int ENODEV ;
 int pr_info (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int check_dev(struct au0828_dev *dev)
{
 if (test_bit(DEV_DISCONNECTED, &dev->dev_state)) {
  pr_info("v4l2 ioctl: device not present\n");
  return -ENODEV;
 }

 if (test_bit(DEV_MISCONFIGURED, &dev->dev_state)) {
  pr_info("v4l2 ioctl: device is misconfigured; close and open it again\n");
  return -EIO;
 }
 return 0;
}
