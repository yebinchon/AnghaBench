
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct peak_usb_device {int ctrl_idx; int cmd_buf; } ;
struct pcan_usb_pro_msg {int dummy; } ;


 int PCAN_USBPRO_SETLED ;
 int PCAN_USB_MAX_CMD_LEN ;
 int pcan_msg_add_rec (struct pcan_usb_pro_msg*,int ,int ,int ,int ) ;
 int pcan_msg_init_empty (struct pcan_usb_pro_msg*,int ,int ) ;
 int pcan_usb_pro_send_cmd (struct peak_usb_device*,struct pcan_usb_pro_msg*) ;

__attribute__((used)) static int pcan_usb_pro_set_led(struct peak_usb_device *dev, u8 mode,
    u32 timeout)
{
 struct pcan_usb_pro_msg um;

 pcan_msg_init_empty(&um, dev->cmd_buf, PCAN_USB_MAX_CMD_LEN);
 pcan_msg_add_rec(&um, PCAN_USBPRO_SETLED, dev->ctrl_idx, mode, timeout);

 return pcan_usb_pro_send_cmd(dev, &um);
}
