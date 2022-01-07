
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pucan_timing_slow {int ewl; int brp; int tseg1; int tseg2; int sjw_t; int opcode_channel; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct peak_usb_device {TYPE_1__ can; int ctrl_idx; } ;
struct can_bittiming {scalar_t__ brp; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ phase_seg2; scalar_t__ sjw; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int PUCAN_CMD_TIMING_SLOW ;
 int PUCAN_TSLOW_BRP (scalar_t__) ;
 int PUCAN_TSLOW_SJW_T (scalar_t__,int) ;
 int PUCAN_TSLOW_TSEG1 (scalar_t__) ;
 int PUCAN_TSLOW_TSEG2 (scalar_t__) ;
 int cpu_to_le16 (int ) ;
 struct pucan_timing_slow* pcan_usb_fd_cmd_buffer (struct peak_usb_device*) ;
 int pcan_usb_fd_send_cmd (struct peak_usb_device*,struct pucan_timing_slow*) ;
 int pucan_cmd_opcode_channel (int ,int ) ;

__attribute__((used)) static int pcan_usb_fd_set_bittiming_slow(struct peak_usb_device *dev,
       struct can_bittiming *bt)
{
 struct pucan_timing_slow *cmd = pcan_usb_fd_cmd_buffer(dev);

 cmd->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
             PUCAN_CMD_TIMING_SLOW);
 cmd->sjw_t = PUCAN_TSLOW_SJW_T(bt->sjw - 1,
    dev->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES);

 cmd->tseg2 = PUCAN_TSLOW_TSEG2(bt->phase_seg2 - 1);
 cmd->tseg1 = PUCAN_TSLOW_TSEG1(bt->prop_seg + bt->phase_seg1 - 1);
 cmd->brp = cpu_to_le16(PUCAN_TSLOW_BRP(bt->brp - 1));

 cmd->ewl = 96;


 return pcan_usb_fd_send_cmd(dev, ++cmd);
}
