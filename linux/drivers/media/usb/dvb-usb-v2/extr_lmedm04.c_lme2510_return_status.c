
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int info (char*,int*) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int lme2510_return_status(struct dvb_usb_device *d)
{
 int ret;
 u8 *data;

 data = kzalloc(6, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0),
         0x06, 0x80, 0x0302, 0x00,
         data, 0x6, 200);
 if (ret != 6)
  ret = -EINVAL;
 else
  ret = data[2];

 info("Firmware Status: %6ph", data);

 kfree(data);
 return ret;
}
