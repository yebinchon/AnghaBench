
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {struct if_usb_card* card; } ;
struct if_usb_card {int udev; struct cmd_ds_802_11_reset* ep_out_buf; } ;
struct TYPE_2__ {void* seqnum; void* result; void* size; void* command; } ;
struct cmd_ds_802_11_reset {void* action; TYPE_1__ hdr; } ;
typedef int __le32 ;


 int CMD_802_11_RESET ;
 int CMD_ACT_HALT ;
 int CMD_TYPE_REQUEST ;
 int LBTF_DEB_USB ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave_args (int ,char*,int) ;
 int msleep (int) ;
 int usb_reset_device (int ) ;
 int usb_tx_block (struct if_usb_card*,struct cmd_ds_802_11_reset*,int,int ) ;

__attribute__((used)) static int if_usb_reset_device(struct lbtf_private *priv)
{
 struct if_usb_card *cardp = priv->card;
 struct cmd_ds_802_11_reset *cmd = cardp->ep_out_buf + 4;
 int ret;

 lbtf_deb_enter(LBTF_DEB_USB);

 *(__le32 *)cardp->ep_out_buf = cpu_to_le32(CMD_TYPE_REQUEST);

 cmd->hdr.command = cpu_to_le16(CMD_802_11_RESET);
 cmd->hdr.size = cpu_to_le16(sizeof(struct cmd_ds_802_11_reset));
 cmd->hdr.result = cpu_to_le16(0);
 cmd->hdr.seqnum = cpu_to_le16(0x5a5a);
 cmd->action = cpu_to_le16(CMD_ACT_HALT);
 usb_tx_block(cardp, cardp->ep_out_buf,
       4 + sizeof(struct cmd_ds_802_11_reset), 0);

 msleep(100);
 ret = usb_reset_device(cardp->udev);
 msleep(100);

 lbtf_deb_leave_args(LBTF_DEB_USB, "ret %d", ret);

 return ret;
}
