
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int pusb_dev; } ;


 int EP0_OP_SHIFT ;
 int EP0_WRITE_REG_CMD ;
 int RTSX_USB_REQ_REG_OP ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int swab16 (int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

int rtsx_usb_ep0_write_register(struct rtsx_ucr *ucr, u16 addr,
  u8 mask, u8 data)
{
 u16 value, index;

 addr |= EP0_WRITE_REG_CMD << EP0_OP_SHIFT;
 value = swab16(addr);
 index = mask | data << 8;

 return usb_control_msg(ucr->pusb_dev,
   usb_sndctrlpipe(ucr->pusb_dev, 0), RTSX_USB_REQ_REG_OP,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, ((void*)0), 0, 100);
}
