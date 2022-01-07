
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pucan_command {int opcode_channel; } ;
struct peak_usb_device {int ctrl_idx; } ;


 int PUCAN_CMD_RESET_MODE ;
 int pcan_usb_fd_build_restart_cmd (struct peak_usb_device*,scalar_t__*) ;
 scalar_t__* pcan_usb_fd_cmd_buffer (struct peak_usb_device*) ;
 int pcan_usb_fd_send_cmd (struct peak_usb_device*,scalar_t__*) ;
 int pucan_cmd_opcode_channel (int ,int ) ;

__attribute__((used)) static int pcan_usb_fd_set_bus(struct peak_usb_device *dev, u8 onoff)
{
 u8 *pc = pcan_usb_fd_cmd_buffer(dev);
 int l;

 if (onoff) {

  l = pcan_usb_fd_build_restart_cmd(dev, pc);
 } else {
  struct pucan_command *cmd = (struct pucan_command *)pc;


  cmd->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
       PUCAN_CMD_RESET_MODE);
  l = sizeof(struct pucan_command);
 }


 return pcan_usb_fd_send_cmd(dev, pc + l);
}
