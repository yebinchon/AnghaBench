
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {int info1; } ;
struct kvaser_cmd {TYPE_2__ error_event; } ;
struct TYPE_3__ {int dev; } ;







 int dev_warn (int *,char*,...) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void kvaser_usb_hydra_error_event_parameter(const struct kvaser_usb *dev,
         const struct kvaser_cmd *cmd)
{

 switch (le16_to_cpu(cmd->error_event.info1)) {
 case 129:
  dev_warn(&dev->intf->dev,
    "CMD_START_CHIP_REQ error in parameter\n");
  break;

 case 128:
  dev_warn(&dev->intf->dev,
    "CMD_STOP_CHIP_REQ error in parameter\n");
  break;

 case 132:
  dev_warn(&dev->intf->dev,
    "CMD_FLUSH_QUEUE error in parameter\n");
  break;

 case 130:
  dev_warn(&dev->intf->dev,
    "Set bittiming failed. Error in parameter\n");
  break;

 case 131:
  dev_warn(&dev->intf->dev,
    "Set data bittiming failed. Error in parameter\n");
  break;

 default:
  dev_warn(&dev->intf->dev,
    "Unhandled parameter error event cmd_no (%u)\n",
    le16_to_cpu(cmd->error_event.info1));
  break;
 }
}
