
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int pusb_dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int EP0_OP_SHIFT ;
 int EP0_READ_REG_CMD ;
 int GFP_KERNEL ;
 int RTSX_USB_REQ_REG_OP ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int swab16 (int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

int rtsx_usb_ep0_read_register(struct rtsx_ucr *ucr, u16 addr, u8 *data)
{
 u16 value;
 u8 *buf;
 int ret;

 if (!data)
  return -EINVAL;

 buf = kzalloc(sizeof(u8), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 addr |= EP0_READ_REG_CMD << EP0_OP_SHIFT;
 value = swab16(addr);

 ret = usb_control_msg(ucr->pusb_dev,
   usb_rcvctrlpipe(ucr->pusb_dev, 0), RTSX_USB_REQ_REG_OP,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, 0, buf, 1, 100);
 *data = *buf;

 kfree(buf);
 return ret;
}
