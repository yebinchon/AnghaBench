
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct queue_set {int dummy; } ;
struct nicvf {int dummy; } ;


 int NIC_MBOX_MSG_RQ_SW_SYNC ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_reclaim_rcv_queue(struct nicvf *nic,
        struct queue_set *qs, int qidx)
{
 union nic_mbx mbx = {};


 mbx.msg.msg = NIC_MBOX_MSG_RQ_SW_SYNC;
 nicvf_send_msg_to_pf(nic, &mbx);
}
