
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct peak_usb_device {int ctrl_idx; } ;
struct pcan_ufd_clock {int mode; int opcode_channel; } ;


 int PCAN_UFD_CMD_CLK_SET ;
 struct pcan_ufd_clock* pcan_usb_fd_cmd_buffer (struct peak_usb_device*) ;
 int pcan_usb_fd_send_cmd (struct peak_usb_device*,struct pcan_ufd_clock*) ;
 int pucan_cmd_opcode_channel (int ,int ) ;

__attribute__((used)) static int pcan_usb_fd_set_clock_domain(struct peak_usb_device *dev,
     u8 clk_mode)
{
 struct pcan_ufd_clock *cmd = pcan_usb_fd_cmd_buffer(dev);

 cmd->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
             PCAN_UFD_CMD_CLK_SET);
 cmd->mode = clk_mode;


 return pcan_usb_fd_send_cmd(dev, ++cmd);
}
