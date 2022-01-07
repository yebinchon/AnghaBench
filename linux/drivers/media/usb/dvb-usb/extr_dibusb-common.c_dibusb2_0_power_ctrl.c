
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int DIBUSB_IOCTL_CMD_POWER_MODE ;
 int DIBUSB_IOCTL_POWER_WAKEUP ;
 int DIBUSB_REQ_SET_IOCTL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

int dibusb2_0_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 *b;
 int ret;

 if (!onoff)
  return 0;

 b = kmalloc(3, GFP_KERNEL);
 if (!b)
  return -ENOMEM;

 b[0] = DIBUSB_REQ_SET_IOCTL;
 b[1] = DIBUSB_IOCTL_CMD_POWER_MODE;
 b[2] = DIBUSB_IOCTL_POWER_WAKEUP;

 ret = dvb_usb_generic_write(d, b, 3);

 kfree(b);

 return ret;
}
