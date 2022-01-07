
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int family; } ;
struct TYPE_5__ {TYPE_1__ leaf; } ;
struct kvaser_usb {TYPE_3__* intf; TYPE_2__ card_data; } ;
struct kvaser_cmd {int id; } ;
struct TYPE_6__ {int dev; } ;
 int KVASER_LEAF ;
 int KVASER_USBCAN ;
 int dev_warn (int *,char*,int) ;
 int kvaser_usb_leaf_leaf_rx_error (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_leaf_rx_can_msg (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_leaf_start_chip_reply (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_leaf_stop_chip_reply (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_leaf_tx_acknowledge (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_leaf_usbcan_rx_error (struct kvaser_usb const*,struct kvaser_cmd const*) ;

__attribute__((used)) static void kvaser_usb_leaf_handle_command(const struct kvaser_usb *dev,
        const struct kvaser_cmd *cmd)
{
 switch (cmd->id) {
 case 131:
  kvaser_usb_leaf_start_chip_reply(dev, cmd);
  break;

 case 130:
  kvaser_usb_leaf_stop_chip_reply(dev, cmd);
  break;

 case 132:
 case 133:
  kvaser_usb_leaf_rx_can_msg(dev, cmd);
  break;

 case 134:
  if (dev->card_data.leaf.family != KVASER_LEAF)
   goto warn;
  kvaser_usb_leaf_rx_can_msg(dev, cmd);
  break;

 case 136:
 case 137:
  if (dev->card_data.leaf.family == KVASER_LEAF)
   kvaser_usb_leaf_leaf_rx_error(dev, cmd);
  else
   kvaser_usb_leaf_usbcan_rx_error(dev, cmd);
  break;

 case 129:
  kvaser_usb_leaf_tx_acknowledge(dev, cmd);
  break;


 case 128:
  if (dev->card_data.leaf.family != KVASER_USBCAN)
   goto warn;
  break;

 case 135:
  if (dev->card_data.leaf.family != KVASER_LEAF)
   goto warn;
  break;

 default:
warn: dev_warn(&dev->intf->dev, "Unhandled command (%d)\n", cmd->id);
  break;
 }
}
