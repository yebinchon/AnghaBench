
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int error_factor; } ;
struct kvaser_usb_err_summary {TYPE_6__ leaf; int rxerr; int txerr; int status; int channel; } ;
struct kvaser_usb {TYPE_7__* intf; } ;
struct TYPE_10__ {int rx_errors_count; int tx_errors_count; int status; int channel; } ;
struct TYPE_9__ {int * data; int channel; } ;
struct TYPE_8__ {int error_factor; int rx_errors_count; int tx_errors_count; int status; int channel; } ;
struct TYPE_11__ {TYPE_3__ chip_state_event; TYPE_2__ log_message; TYPE_1__ error_event; } ;
struct TYPE_12__ {TYPE_4__ leaf; } ;
struct kvaser_cmd {int id; TYPE_5__ u; } ;
struct TYPE_14__ {int dev; } ;





 int dev_err (int *,char*,int) ;
 int kvaser_usb_leaf_rx_error (struct kvaser_usb const*,struct kvaser_usb_err_summary*) ;

__attribute__((used)) static void kvaser_usb_leaf_leaf_rx_error(const struct kvaser_usb *dev,
       const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_err_summary es = { };

 switch (cmd->id) {
 case 130:
  es.channel = cmd->u.leaf.error_event.channel;
  es.status = cmd->u.leaf.error_event.status;
  es.txerr = cmd->u.leaf.error_event.tx_errors_count;
  es.rxerr = cmd->u.leaf.error_event.rx_errors_count;
  es.leaf.error_factor = cmd->u.leaf.error_event.error_factor;
  break;
 case 128:
  es.channel = cmd->u.leaf.log_message.channel;
  es.status = cmd->u.leaf.log_message.data[0];
  es.txerr = cmd->u.leaf.log_message.data[2];
  es.rxerr = cmd->u.leaf.log_message.data[3];
  es.leaf.error_factor = cmd->u.leaf.log_message.data[1];
  break;
 case 129:
  es.channel = cmd->u.leaf.chip_state_event.channel;
  es.status = cmd->u.leaf.chip_state_event.status;
  es.txerr = cmd->u.leaf.chip_state_event.tx_errors_count;
  es.rxerr = cmd->u.leaf.chip_state_event.rx_errors_count;
  es.leaf.error_factor = 0;
  break;
 default:
  dev_err(&dev->intf->dev, "Invalid cmd id (%d)\n", cmd->id);
  return;
 }

 kvaser_usb_leaf_rx_error(dev, &es);
}
