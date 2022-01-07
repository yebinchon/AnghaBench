
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_ucr {int pusb_dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RTSX_USB_REQ_POLL ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 scalar_t__ polling_pipe ;
 int rtsx_usb_get_status_with_bulk (struct rtsx_ucr*,int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

int rtsx_usb_get_card_status(struct rtsx_ucr *ucr, u16 *status)
{
 int ret;
 u16 *buf;

 if (!status)
  return -EINVAL;

 if (polling_pipe == 0) {
  buf = kzalloc(sizeof(u16), GFP_KERNEL);
  if (!buf)
   return -ENOMEM;

  ret = usb_control_msg(ucr->pusb_dev,
    usb_rcvctrlpipe(ucr->pusb_dev, 0),
    RTSX_USB_REQ_POLL,
    USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0, 0, buf, 2, 100);
  *status = *buf;

  kfree(buf);
 } else {
  ret = rtsx_usb_get_status_with_bulk(ucr, status);
 }


 if (ret < 0)
  return ret;

 return 0;
}
