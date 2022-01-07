
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_stat_mask; int tx_stat_mask; int rq_stat_mask; int sq_stat_mask; int msg; } ;
union nic_mbx {TYPE_1__ reset_stat; } ;
struct nicvf {int dummy; } ;


 int NIC_MBOX_MSG_RESET_STAT_COUNTER ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_reset_rcv_queue_stats(struct nicvf *nic)
{
 union nic_mbx mbx = {};


 mbx.reset_stat.msg = NIC_MBOX_MSG_RESET_STAT_COUNTER;
 mbx.reset_stat.rx_stat_mask = 0x3FFF;
 mbx.reset_stat.tx_stat_mask = 0x1F;
 mbx.reset_stat.rq_stat_mask = 0xFFFF;
 mbx.reset_stat.sq_stat_mask = 0xFFFF;
 nicvf_send_msg_to_pf(nic, &mbx);
}
