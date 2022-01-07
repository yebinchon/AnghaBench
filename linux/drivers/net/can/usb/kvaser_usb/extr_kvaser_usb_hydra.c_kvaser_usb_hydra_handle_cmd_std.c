
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {int cmd_no; } ;
struct kvaser_cmd {TYPE_2__ header; } ;
struct TYPE_3__ {int dev; } ;
 int dev_warn (int *,char*,int) ;
 int kvaser_usb_hydra_error_event (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_flush_queue_reply (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_rx_msg_std (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_start_chip_reply (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_state_event (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_stop_chip_reply (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int kvaser_usb_hydra_tx_acknowledge (struct kvaser_usb const*,struct kvaser_cmd const*) ;

__attribute__((used)) static void kvaser_usb_hydra_handle_cmd_std(const struct kvaser_usb *dev,
         const struct kvaser_cmd *cmd)
{
 switch (cmd->header.cmd_no) {
 case 130:
  kvaser_usb_hydra_start_chip_reply(dev, cmd);
  break;

 case 129:
  kvaser_usb_hydra_stop_chip_reply(dev, cmd);
  break;

 case 134:
  kvaser_usb_hydra_flush_queue_reply(dev, cmd);
  break;

 case 136:
  kvaser_usb_hydra_state_event(dev, cmd);
  break;

 case 135:
  kvaser_usb_hydra_error_event(dev, cmd);
  break;

 case 128:
  kvaser_usb_hydra_tx_acknowledge(dev, cmd);
  break;

 case 133:
  kvaser_usb_hydra_rx_msg_std(dev, cmd);
  break;


 case 131:
 case 132:
  break;

 default:
  dev_warn(&dev->intf->dev, "Unhandled command (%d)\n",
    cmd->header.cmd_no);
  break;
 }
}
