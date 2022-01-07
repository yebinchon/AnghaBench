
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int sysdbg_he; } ;
struct kvaser_usb_dev_card_data {int ctrlmode_supported; int capabilities; TYPE_3__ hydra; } ;
struct kvaser_usb {int nchannels; TYPE_5__* intf; struct kvaser_usb_dev_card_data card_data; } ;
struct TYPE_9__ {int mask; int value; int cap_cmd; int status; } ;
struct TYPE_7__ {int cap_cmd; } ;
struct TYPE_6__ {int cmd_no; } ;
struct kvaser_cmd {TYPE_4__ cap_res; TYPE_2__ cap_req; TYPE_1__ header; } ;
struct TYPE_10__ {int dev; } ;


 int BIT (int) ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CMD_GET_CAPABILITIES_REQ ;
 int CMD_GET_CAPABILITIES_RESP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_USB_CAP_BERR_CAP ;



 int KVASER_USB_HYDRA_CAP_STAT_OK ;
 int cpu_to_le16 (int) ;
 int dev_warn (int *,char*,int) ;
 struct kvaser_cmd* kcalloc (int,int,int ) ;
 int kfree (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_cmd_size (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_get_next_transid (struct kvaser_usb*) ;
 int kvaser_usb_hydra_set_cmd_dest_he (struct kvaser_cmd*,int ) ;
 int kvaser_usb_hydra_set_cmd_transid (struct kvaser_cmd*,int ) ;
 int kvaser_usb_hydra_wait_cmd (struct kvaser_usb*,int ,struct kvaser_cmd*) ;
 int kvaser_usb_send_cmd (struct kvaser_usb*,struct kvaser_cmd*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int kvaser_usb_hydra_get_single_capability(struct kvaser_usb *dev,
        u16 cap_cmd_req, u16 *status)
{
 struct kvaser_usb_dev_card_data *card_data = &dev->card_data;
 struct kvaser_cmd *cmd;
 u32 value = 0;
 u32 mask = 0;
 u16 cap_cmd_res;
 int err;
 int i;

 cmd = kcalloc(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->header.cmd_no = CMD_GET_CAPABILITIES_REQ;
 cmd->cap_req.cap_cmd = cpu_to_le16(cap_cmd_req);

 kvaser_usb_hydra_set_cmd_dest_he(cmd, card_data->hydra.sysdbg_he);
 kvaser_usb_hydra_set_cmd_transid
    (cmd, kvaser_usb_hydra_get_next_transid(dev));

 err = kvaser_usb_send_cmd(dev, cmd, kvaser_usb_hydra_cmd_size(cmd));
 if (err)
  goto end;

 err = kvaser_usb_hydra_wait_cmd(dev, CMD_GET_CAPABILITIES_RESP, cmd);
 if (err)
  goto end;

 *status = le16_to_cpu(cmd->cap_res.status);

 if (*status != KVASER_USB_HYDRA_CAP_STAT_OK)
  goto end;

 cap_cmd_res = le16_to_cpu(cmd->cap_res.cap_cmd);
 switch (cap_cmd_res) {
 case 129:
 case 130:
 case 128:
  value = le32_to_cpu(cmd->cap_res.value);
  mask = le32_to_cpu(cmd->cap_res.mask);
  break;
 default:
  dev_warn(&dev->intf->dev, "Unknown capability command %u\n",
    cap_cmd_res);
  break;
 }

 for (i = 0; i < dev->nchannels; i++) {
  if (BIT(i) & (value & mask)) {
   switch (cap_cmd_res) {
   case 129:
    card_data->ctrlmode_supported |=
      CAN_CTRLMODE_LISTENONLY;
    break;
   case 130:
    card_data->capabilities |=
      KVASER_USB_CAP_BERR_CAP;
    break;
   case 128:
    card_data->ctrlmode_supported |=
      CAN_CTRLMODE_ONE_SHOT;
    break;
   }
  }
 }

end:
 kfree(cmd);

 return err;
}
