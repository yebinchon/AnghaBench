
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvaser_usb_dev_cfg {int timestamp_freq; } ;
struct TYPE_4__ {int timestamp; } ;
struct kvaser_cmd_ext {TYPE_1__ rx_can; } ;
struct TYPE_5__ {int * timestamp; } ;
struct TYPE_6__ {scalar_t__ cmd_no; } ;
struct kvaser_cmd {TYPE_2__ rx_can; TYPE_3__ header; } ;
typedef int ktime_t ;


 scalar_t__ CMD_EXTENDED ;
 int div_u64 (int,int ) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static ktime_t
kvaser_usb_hydra_ktime_from_rx_cmd(const struct kvaser_usb_dev_cfg *cfg,
       const struct kvaser_cmd *cmd)
{
 u64 ticks;

 if (cmd->header.cmd_no == CMD_EXTENDED) {
  struct kvaser_cmd_ext *cmd_ext = (struct kvaser_cmd_ext *)cmd;

  ticks = le64_to_cpu(cmd_ext->rx_can.timestamp);
 } else {
  ticks = le16_to_cpu(cmd->rx_can.timestamp[0]);
  ticks += (u64)(le16_to_cpu(cmd->rx_can.timestamp[1])) << 16;
  ticks += (u64)(le16_to_cpu(cmd->rx_can.timestamp[2])) << 32;
 }

 return ns_to_ktime(div_u64(ticks * 1000, cfg->timestamp_freq));
}
