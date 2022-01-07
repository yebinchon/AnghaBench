
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {void* freq; } ;
struct TYPE_6__ {int ctrlmode_supported; TYPE_1__ clock; } ;
struct can_bittiming_const {void* brp_inc; void* brp_max; void* brp_min; int sjw_max; int tseg2_max; int tseg2_min; int tseg1_max; int tseg1_min; int name; } ;
struct TYPE_5__ {int tx_fifo; struct can_bittiming_const bittiming_const; } ;
struct ucan_priv {TYPE_3__ can; TYPE_2__ device_info; } ;
struct ucan_ctl_cmd_device_info {int ctrlmodes; int brp_inc; int brp_max; int brp_min; int sjw_max; int tseg2_max; int tseg2_min; int tseg1_max; int tseg1_min; int tx_fifo; int freq; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int UCAN_MODE_3_SAMPLES ;
 int UCAN_MODE_BERR_REPORT ;
 int UCAN_MODE_LOOPBACK ;
 int UCAN_MODE_ONE_SHOT ;
 int UCAN_MODE_SILENT ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void ucan_parse_device_info(struct ucan_priv *up,
       struct ucan_ctl_cmd_device_info *device_info)
{
 struct can_bittiming_const *bittiming =
  &up->device_info.bittiming_const;
 u16 ctrlmodes;


 up->can.clock.freq = le32_to_cpu(device_info->freq);
 up->device_info.tx_fifo = device_info->tx_fifo;
 strcpy(bittiming->name, "ucan");
 bittiming->tseg1_min = device_info->tseg1_min;
 bittiming->tseg1_max = device_info->tseg1_max;
 bittiming->tseg2_min = device_info->tseg2_min;
 bittiming->tseg2_max = device_info->tseg2_max;
 bittiming->sjw_max = device_info->sjw_max;
 bittiming->brp_min = le32_to_cpu(device_info->brp_min);
 bittiming->brp_max = le32_to_cpu(device_info->brp_max);
 bittiming->brp_inc = le16_to_cpu(device_info->brp_inc);

 ctrlmodes = le16_to_cpu(device_info->ctrlmodes);

 up->can.ctrlmode_supported = 0;

 if (ctrlmodes & UCAN_MODE_LOOPBACK)
  up->can.ctrlmode_supported |= CAN_CTRLMODE_LOOPBACK;
 if (ctrlmodes & UCAN_MODE_SILENT)
  up->can.ctrlmode_supported |= CAN_CTRLMODE_LISTENONLY;
 if (ctrlmodes & UCAN_MODE_3_SAMPLES)
  up->can.ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;
 if (ctrlmodes & UCAN_MODE_ONE_SHOT)
  up->can.ctrlmode_supported |= CAN_CTRLMODE_ONE_SHOT;
 if (ctrlmodes & UCAN_MODE_BERR_REPORT)
  up->can.ctrlmode_supported |= CAN_CTRLMODE_BERR_REPORTING;
}
