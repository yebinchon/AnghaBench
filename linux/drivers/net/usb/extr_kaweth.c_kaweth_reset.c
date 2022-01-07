
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaweth_device {int net; int dev; } ;


 int mdelay (int) ;
 int netdev_dbg (int ,char*,int) ;
 int usb_reset_configuration (int ) ;

__attribute__((used)) static int kaweth_reset(struct kaweth_device *kaweth)
{
 int result;

 result = usb_reset_configuration(kaweth->dev);
 mdelay(10);

 netdev_dbg(kaweth->net, "kaweth_reset() returns %d.\n", result);

 return result;
}
