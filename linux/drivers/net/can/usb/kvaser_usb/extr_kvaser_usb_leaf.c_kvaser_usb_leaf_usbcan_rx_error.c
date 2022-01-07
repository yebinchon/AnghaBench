
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int other_ch_status; } ;
struct kvaser_usb_err_summary {int channel; TYPE_2__ usbcan; int rxerr; int txerr; int status; } ;
struct kvaser_usb {TYPE_6__* intf; int nchannels; } ;
struct TYPE_9__ {int status_ch0; int rx_errors_count_ch1; int tx_errors_count_ch1; int status_ch1; int rx_errors_count_ch0; int tx_errors_count_ch0; } ;
struct TYPE_7__ {int channel; int rx_errors_count; int tx_errors_count; int status; } ;
struct TYPE_10__ {TYPE_3__ error_event; TYPE_1__ chip_state_event; } ;
struct TYPE_11__ {TYPE_4__ usbcan; } ;
struct kvaser_cmd {int id; TYPE_5__ u; } ;
struct TYPE_12__ {int dev; } ;




 int MAX_USBCAN_NET_DEVICES ;
 int dev_err (int *,char*,int) ;
 int kvaser_usb_leaf_usbcan_conditionally_rx_error (struct kvaser_usb const*,struct kvaser_usb_err_summary*) ;

__attribute__((used)) static void kvaser_usb_leaf_usbcan_rx_error(const struct kvaser_usb *dev,
         const struct kvaser_cmd *cmd)
{
 struct kvaser_usb_err_summary es = { };

 switch (cmd->id) {

 case 128:
  es.channel = cmd->u.usbcan.chip_state_event.channel;
  es.status = cmd->u.usbcan.chip_state_event.status;
  es.txerr = cmd->u.usbcan.chip_state_event.tx_errors_count;
  es.rxerr = cmd->u.usbcan.chip_state_event.rx_errors_count;
  kvaser_usb_leaf_usbcan_conditionally_rx_error(dev, &es);
  break;

 case 129:
  es.channel = 0;
  es.status = cmd->u.usbcan.error_event.status_ch0;
  es.txerr = cmd->u.usbcan.error_event.tx_errors_count_ch0;
  es.rxerr = cmd->u.usbcan.error_event.rx_errors_count_ch0;
  es.usbcan.other_ch_status =
   cmd->u.usbcan.error_event.status_ch1;
  kvaser_usb_leaf_usbcan_conditionally_rx_error(dev, &es);




  if (dev->nchannels == MAX_USBCAN_NET_DEVICES) {
   es.channel = 1;
   es.status = cmd->u.usbcan.error_event.status_ch1;
   es.txerr =
    cmd->u.usbcan.error_event.tx_errors_count_ch1;
   es.rxerr =
    cmd->u.usbcan.error_event.rx_errors_count_ch1;
   es.usbcan.other_ch_status =
    cmd->u.usbcan.error_event.status_ch0;
   kvaser_usb_leaf_usbcan_conditionally_rx_error(dev, &es);
  }
  break;

 default:
  dev_err(&dev->intf->dev, "Invalid cmd id (%d)\n", cmd->id);
 }
}
