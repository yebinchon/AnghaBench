
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int state; int udev; } ;
struct VENDOR_REQUEST_IN {int wLength; int direction; int bRequest; int wValue; int * pBuff; int wIndex; } ;


 int DEV_DISCONNECTED ;
 int EINVAL ;
 int ENODEV ;
 int HZ ;
 int URB_MAX_CTRL_SIZE ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __usb_control_msg (struct cx231xx*,int,int,int,int,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

int cx231xx_send_vendor_cmd(struct cx231xx *dev,
    struct VENDOR_REQUEST_IN *ven_req)
{
 int ret;
 int pipe = 0;
 int unsend_size = 0;
 u8 *pdata;

 if (dev->state & DEV_DISCONNECTED)
  return -ENODEV;

 if ((ven_req->wLength > URB_MAX_CTRL_SIZE))
  return -EINVAL;

 if (ven_req->direction)
  pipe = usb_rcvctrlpipe(dev->udev, 0);
 else
  pipe = usb_sndctrlpipe(dev->udev, 0);





 if ((ven_req->wLength > 4) && ((ven_req->bRequest == 0x4) ||
     (ven_req->bRequest == 0x5) ||
     (ven_req->bRequest == 0x6) ||




     (ven_req->bRequest == 0x2))) {
  unsend_size = 0;
  pdata = ven_req->pBuff;


  unsend_size = ven_req->wLength;


  ven_req->wValue = ven_req->wValue & 0xFFFB;
  ven_req->wValue = (ven_req->wValue & 0xFFBD) | 0x2;
  ret = __usb_control_msg(dev, pipe, ven_req->bRequest,
   ven_req->direction | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   ven_req->wValue, ven_req->wIndex, pdata,
   0x0004, HZ);
  unsend_size = unsend_size - 4;


  ven_req->wValue = (ven_req->wValue & 0xFFBD) | 0x42;
  while (unsend_size - 4 > 0) {
   pdata = pdata + 4;
   ret = __usb_control_msg(dev, pipe,
    ven_req->bRequest,
    ven_req->direction | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    ven_req->wValue, ven_req->wIndex, pdata,
    0x0004, HZ);
   unsend_size = unsend_size - 4;
  }


  ven_req->wValue = (ven_req->wValue & 0xFFBD) | 0x40;
  pdata = pdata + 4;
  ret = __usb_control_msg(dev, pipe, ven_req->bRequest,
   ven_req->direction | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   ven_req->wValue, ven_req->wIndex, pdata,
   unsend_size, HZ);
 } else {
  ret = __usb_control_msg(dev, pipe, ven_req->bRequest,
    ven_req->direction | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    ven_req->wValue, ven_req->wIndex,
    ven_req->pBuff, ven_req->wLength, HZ);
 }

 return ret;
}
