
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_usb_card {int udev; struct cmd_header* ep_out_buf; } ;
struct cmd_header {void* seqnum; void* result; void* size; void* command; } ;
typedef int cmd ;
typedef int __le32 ;


 int CMD_802_11_RESET ;
 int CMD_TYPE_REQUEST ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int if_usb_reset_olpc_card (int *) ;
 scalar_t__ machine_is_olpc () ;
 int msleep (int) ;
 int usb_reset_device (int ) ;
 int usb_tx_block (struct if_usb_card*,struct cmd_header*,int) ;

__attribute__((used)) static int if_usb_reset_device(struct if_usb_card *cardp)
{
 struct cmd_header *cmd = cardp->ep_out_buf + 4;
 int ret;

 *(__le32 *)cardp->ep_out_buf = cpu_to_le32(CMD_TYPE_REQUEST);

 cmd->command = cpu_to_le16(CMD_802_11_RESET);
 cmd->size = cpu_to_le16(sizeof(cmd));
 cmd->result = cpu_to_le16(0);
 cmd->seqnum = cpu_to_le16(0x5a5a);
 usb_tx_block(cardp, cardp->ep_out_buf, 4 + sizeof(struct cmd_header));

 msleep(100);
 ret = usb_reset_device(cardp->udev);
 msleep(100);






 return ret;
}
