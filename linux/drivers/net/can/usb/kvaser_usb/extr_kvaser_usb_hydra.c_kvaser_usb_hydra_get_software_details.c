
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct kvaser_usb_dev_card_data {int ctrlmode_supported; int capabilities; } ;
struct kvaser_usb {int * cfg; TYPE_4__* intf; void* fw_version; struct kvaser_usb_dev_card_data card_data; } ;
struct TYPE_7__ {int sw_flags; int sw_version; } ;
struct TYPE_6__ {int use_ext_cmd; } ;
struct TYPE_5__ {int cmd_no; } ;
struct kvaser_cmd {TYPE_3__ sw_detail_res; TYPE_2__ sw_detail_req; TYPE_1__ header; } ;
struct TYPE_8__ {int dev; } ;


 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CMD_GET_SOFTWARE_DETAILS_REQ ;
 int CMD_GET_SOFTWARE_DETAILS_RESP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_USB_CAP_EXT_CAP ;
 int KVASER_USB_HYDRA_CAP_EXT_CMD ;
 int KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL ;
 int KVASER_USB_HYDRA_SW_FLAG_CANFD ;
 int KVASER_USB_HYDRA_SW_FLAG_EXT_CAP ;
 int KVASER_USB_HYDRA_SW_FLAG_EXT_CMD ;
 int KVASER_USB_HYDRA_SW_FLAG_FREQ_80M ;
 int KVASER_USB_HYDRA_SW_FLAG_FW_BAD ;
 int KVASER_USB_HYDRA_SW_FLAG_FW_BETA ;
 int KVASER_USB_HYDRA_SW_FLAG_NONISO ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct kvaser_cmd* kcalloc (int,int,int ) ;
 int kfree (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_cmd_size (struct kvaser_cmd*) ;
 int kvaser_usb_hydra_dev_cfg_flexc ;
 int kvaser_usb_hydra_dev_cfg_kcan ;
 int kvaser_usb_hydra_get_next_transid (struct kvaser_usb*) ;
 int kvaser_usb_hydra_set_cmd_dest_he (struct kvaser_cmd*,int ) ;
 int kvaser_usb_hydra_set_cmd_transid (struct kvaser_cmd*,int ) ;
 int kvaser_usb_hydra_wait_cmd (struct kvaser_usb*,int ,struct kvaser_cmd*) ;
 int kvaser_usb_send_cmd (struct kvaser_usb*,struct kvaser_cmd*,int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int kvaser_usb_hydra_get_software_details(struct kvaser_usb *dev)
{
 struct kvaser_cmd *cmd;
 int err;
 u32 flags;
 struct kvaser_usb_dev_card_data *card_data = &dev->card_data;

 cmd = kcalloc(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->header.cmd_no = CMD_GET_SOFTWARE_DETAILS_REQ;
 cmd->sw_detail_req.use_ext_cmd = 1;
 kvaser_usb_hydra_set_cmd_dest_he
    (cmd, KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL);

 kvaser_usb_hydra_set_cmd_transid
    (cmd, kvaser_usb_hydra_get_next_transid(dev));

 err = kvaser_usb_send_cmd(dev, cmd, kvaser_usb_hydra_cmd_size(cmd));
 if (err)
  goto end;

 err = kvaser_usb_hydra_wait_cmd(dev, CMD_GET_SOFTWARE_DETAILS_RESP,
     cmd);
 if (err)
  goto end;

 dev->fw_version = le32_to_cpu(cmd->sw_detail_res.sw_version);
 flags = le32_to_cpu(cmd->sw_detail_res.sw_flags);

 if (flags & KVASER_USB_HYDRA_SW_FLAG_FW_BAD) {
  dev_err(&dev->intf->dev,
   "Bad firmware, device refuse to run!\n");
  err = -EINVAL;
  goto end;
 }

 if (flags & KVASER_USB_HYDRA_SW_FLAG_FW_BETA)
  dev_info(&dev->intf->dev, "Beta firmware in use\n");

 if (flags & KVASER_USB_HYDRA_SW_FLAG_EXT_CAP)
  card_data->capabilities |= KVASER_USB_CAP_EXT_CAP;

 if (flags & KVASER_USB_HYDRA_SW_FLAG_EXT_CMD)
  card_data->capabilities |= KVASER_USB_HYDRA_CAP_EXT_CMD;

 if (flags & KVASER_USB_HYDRA_SW_FLAG_CANFD)
  card_data->ctrlmode_supported |= CAN_CTRLMODE_FD;

 if (flags & KVASER_USB_HYDRA_SW_FLAG_NONISO)
  card_data->ctrlmode_supported |= CAN_CTRLMODE_FD_NON_ISO;

 if (flags & KVASER_USB_HYDRA_SW_FLAG_FREQ_80M)
  dev->cfg = &kvaser_usb_hydra_dev_cfg_kcan;
 else
  dev->cfg = &kvaser_usb_hydra_dev_cfg_flexc;

end:
 kfree(cmd);

 return err;
}
