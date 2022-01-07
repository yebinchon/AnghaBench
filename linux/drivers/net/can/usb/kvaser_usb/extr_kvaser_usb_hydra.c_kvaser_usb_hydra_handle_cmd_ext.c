
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {int cmd_no; } ;
struct kvaser_cmd_ext {int cmd_no_ext; TYPE_2__ header; } ;
struct kvaser_cmd {int dummy; } ;
struct TYPE_3__ {int dev; } ;




 int dev_warn (int *,char*,int ) ;
 int kvaser_usb_hydra_rx_msg_ext (struct kvaser_usb const*,struct kvaser_cmd_ext const*) ;
 int kvaser_usb_hydra_tx_acknowledge (struct kvaser_usb const*,struct kvaser_cmd*) ;

__attribute__((used)) static void kvaser_usb_hydra_handle_cmd_ext(const struct kvaser_usb *dev,
         const struct kvaser_cmd_ext *cmd)
{
 switch (cmd->cmd_no_ext) {
 case 128:
  kvaser_usb_hydra_tx_acknowledge(dev, (struct kvaser_cmd *)cmd);
  break;

 case 129:
  kvaser_usb_hydra_rx_msg_ext(dev, cmd);
  break;

 default:
  dev_warn(&dev->intf->dev, "Unhandled extended command (%d)\n",
    cmd->header.cmd_no);
  break;
 }
}
