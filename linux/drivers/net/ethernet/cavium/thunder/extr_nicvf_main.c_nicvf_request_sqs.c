
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sqs_id; int vf_id; int msg; } ;
struct TYPE_5__ {int qs_count; int vf_id; int msg; } ;
union nic_mbx {TYPE_2__ nicvf; TYPE_1__ sqs_alloc; } ;
struct nicvf {int sqs_count; int rx_queues; int tx_queues; int xdp_tx_queues; int netdev; TYPE_4__** snicvf; int vf_id; scalar_t__ sqs_mode; } ;
struct TYPE_8__ {int sqs_id; int netdev; TYPE_3__* qs; } ;
struct TYPE_7__ {int rq_cnt; int sq_cnt; int cq_cnt; } ;


 int MAX_RCV_QUEUES_PER_QS ;
 int MAX_SND_QUEUES_PER_QS ;
 int NIC_MBOX_MSG_ALLOC_SQS ;
 int NIC_MBOX_MSG_SNICVF_PTR ;
 int max (int,int) ;
 int nicvf_open (int ) ;
 scalar_t__ nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;
 int nicvf_set_real_num_queues (int ,int,int) ;

__attribute__((used)) static void nicvf_request_sqs(struct nicvf *nic)
{
 union nic_mbx mbx = {};
 int sqs;
 int sqs_count = nic->sqs_count;
 int rx_queues = 0, tx_queues = 0;


 if (nic->sqs_mode || !nic->sqs_count)
  return;

 mbx.sqs_alloc.msg = NIC_MBOX_MSG_ALLOC_SQS;
 mbx.sqs_alloc.vf_id = nic->vf_id;
 mbx.sqs_alloc.qs_count = nic->sqs_count;
 if (nicvf_send_msg_to_pf(nic, &mbx)) {

  nic->sqs_count = 0;
  return;
 }


 if (!nic->sqs_count)
  return;

 if (nic->rx_queues > MAX_RCV_QUEUES_PER_QS)
  rx_queues = nic->rx_queues - MAX_RCV_QUEUES_PER_QS;

 tx_queues = nic->tx_queues + nic->xdp_tx_queues;
 if (tx_queues > MAX_SND_QUEUES_PER_QS)
  tx_queues = tx_queues - MAX_SND_QUEUES_PER_QS;


 for (sqs = 0; sqs < nic->sqs_count; sqs++) {
  mbx.nicvf.msg = NIC_MBOX_MSG_SNICVF_PTR;
  mbx.nicvf.vf_id = nic->vf_id;
  mbx.nicvf.sqs_id = sqs;
  nicvf_send_msg_to_pf(nic, &mbx);

  nic->snicvf[sqs]->sqs_id = sqs;
  if (rx_queues > MAX_RCV_QUEUES_PER_QS) {
   nic->snicvf[sqs]->qs->rq_cnt = MAX_RCV_QUEUES_PER_QS;
   rx_queues -= MAX_RCV_QUEUES_PER_QS;
  } else {
   nic->snicvf[sqs]->qs->rq_cnt = rx_queues;
   rx_queues = 0;
  }

  if (tx_queues > MAX_SND_QUEUES_PER_QS) {
   nic->snicvf[sqs]->qs->sq_cnt = MAX_SND_QUEUES_PER_QS;
   tx_queues -= MAX_SND_QUEUES_PER_QS;
  } else {
   nic->snicvf[sqs]->qs->sq_cnt = tx_queues;
   tx_queues = 0;
  }

  nic->snicvf[sqs]->qs->cq_cnt =
  max(nic->snicvf[sqs]->qs->rq_cnt, nic->snicvf[sqs]->qs->sq_cnt);


  nicvf_open(nic->snicvf[sqs]->netdev);
 }


 if (sqs_count != nic->sqs_count)
  nicvf_set_real_num_queues(nic->netdev,
       nic->tx_queues, nic->rx_queues);
}
