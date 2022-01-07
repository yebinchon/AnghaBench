
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct kvaser_usb_dev_card_data_hydra {size_t* channel_to_he; size_t sysdbg_he; } ;
struct TYPE_4__ {struct kvaser_usb_dev_card_data_hydra hydra; } ;
struct kvaser_usb {TYPE_3__* intf; TYPE_1__ card_data; } ;
struct TYPE_5__ {size_t he_addr; } ;
struct kvaser_cmd {TYPE_2__ map_ch_res; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;


 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int kvaser_usb_hydra_get_cmd_transid (struct kvaser_cmd const*) ;

__attribute__((used)) static int kvaser_usb_hydra_map_channel_resp(struct kvaser_usb *dev,
          const struct kvaser_cmd *cmd)
{
 u8 he, channel;
 u16 transid = kvaser_usb_hydra_get_cmd_transid(cmd);
 struct kvaser_usb_dev_card_data_hydra *card_data =
       &dev->card_data.hydra;

 if (transid > 0x007f || transid < 0x0040) {
  dev_err(&dev->intf->dev,
   "CMD_MAP_CHANNEL_RESP, invalid transid: 0x%x\n",
   transid);
  return -EINVAL;
 }

 switch (transid) {
 case 129:
 case 129 + 1:
 case 129 + 2:
 case 129 + 3:
 case 129 + 4:
  channel = transid & 0x000f;
  he = cmd->map_ch_res.he_addr;
  card_data->channel_to_he[channel] = he;
  break;
 case 128:
  card_data->sysdbg_he = cmd->map_ch_res.he_addr;
  break;
 default:
  dev_warn(&dev->intf->dev,
    "Unknown CMD_MAP_CHANNEL_RESP transid=0x%x\n",
    transid);
  break;
 }

 return 0;
}
