
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int msg; } ;
union nic_mbx {TYPE_1__ ptp; } ;
struct nicvf {int dummy; } ;


 int NIC_MBOX_MSG_PTP_CFG ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int nicvf_config_hw_rx_tstamp(struct nicvf *nic, bool enable)
{
 union nic_mbx mbx = {};

 mbx.ptp.msg = NIC_MBOX_MSG_PTP_CFG;
 mbx.ptp.enable = enable;

 return nicvf_send_msg_to_pf(nic, &mbx);
}
