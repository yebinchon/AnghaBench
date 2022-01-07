
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct peak_usb_device {int cmd_buf; } ;
struct pcan_usb_pro_msg {int dummy; } ;


 int PCAN_USBPRO_SETTS ;
 int PCAN_USB_MAX_CMD_LEN ;
 int pcan_msg_add_rec (struct pcan_usb_pro_msg*,int ,int ) ;
 int pcan_msg_init_empty (struct pcan_usb_pro_msg*,int ,int ) ;
 int pcan_usb_pro_send_cmd (struct peak_usb_device*,struct pcan_usb_pro_msg*) ;

__attribute__((used)) static int pcan_usb_pro_set_ts(struct peak_usb_device *dev, u16 onoff)
{
 struct pcan_usb_pro_msg um;

 pcan_msg_init_empty(&um, dev->cmd_buf, PCAN_USB_MAX_CMD_LEN);
 pcan_msg_add_rec(&um, PCAN_USBPRO_SETTS, onoff);

 return pcan_usb_pro_send_cmd(dev, &um);
}
