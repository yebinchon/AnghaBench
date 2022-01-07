
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {int error_code; int info1; } ;
struct kvaser_cmd {TYPE_2__ error_event; } ;
struct TYPE_3__ {int dev; } ;




 int dev_err (int *,char*,int ) ;
 int dev_warn (int *,char*,int) ;
 int kvaser_usb_hydra_error_event_parameter (struct kvaser_usb const*,struct kvaser_cmd const*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void kvaser_usb_hydra_error_event(const struct kvaser_usb *dev,
      const struct kvaser_cmd *cmd)
{
 switch (cmd->error_event.error_code) {
 case 128:
  kvaser_usb_hydra_error_event_parameter(dev, cmd);
  break;

 case 129:



  dev_err(&dev->intf->dev,
   "Received CAN error event for cmd_no (%u)\n",
   le16_to_cpu(cmd->error_event.info1));
  break;

 default:
  dev_warn(&dev->intf->dev,
    "Unhandled error event (%d)\n",
    cmd->error_event.error_code);
  break;
 }
}
