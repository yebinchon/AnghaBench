
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct peak_usb_device {int ctrl_idx; } ;
struct pcan_ufd_led {int mode; int opcode_channel; } ;


 int PCAN_UFD_CMD_LED_SET ;
 struct pcan_ufd_led* pcan_usb_fd_cmd_buffer (struct peak_usb_device*) ;
 int pcan_usb_fd_send_cmd (struct peak_usb_device*,struct pcan_ufd_led*) ;
 int pucan_cmd_opcode_channel (int ,int ) ;

__attribute__((used)) static int pcan_usb_fd_set_can_led(struct peak_usb_device *dev, u8 led_mode)
{
 struct pcan_ufd_led *cmd = pcan_usb_fd_cmd_buffer(dev);

 cmd->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
             PCAN_UFD_CMD_LED_SET);
 cmd->mode = led_mode;


 return pcan_usb_fd_send_cmd(dev, ++cmd);
}
