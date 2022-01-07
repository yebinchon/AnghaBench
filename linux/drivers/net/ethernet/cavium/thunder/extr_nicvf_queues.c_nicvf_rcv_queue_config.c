
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qs_num; int rq_num; int cfg; int msg; } ;
union nic_mbx {TYPE_1__ rq; } ;
typedef int u64 ;
struct rq_cfg {int ena; scalar_t__ tcp_ena; } ;
struct rcv_queue {int enable; int cq_qs; int cq_idx; int start_rbdr_qs; int start_qs_rbdr_idx; int cont_rbdr_qs; int cont_qs_rbdr_idx; int caching; int xdp_rxq; } ;
struct queue_set {int vnic_id; int rbdr_cnt; struct rcv_queue* rq; } ;
struct nicvf {TYPE_2__* netdev; int sqs_mode; } ;
struct TYPE_4__ {int features; } ;


 int BIT (int) ;
 int BIT_ULL (int) ;
 int NIC_MBOX_MSG_RQ_BP_CFG ;
 int NIC_MBOX_MSG_RQ_CFG ;
 int NIC_MBOX_MSG_RQ_DROP_CFG ;
 int NIC_QSET_RQ_0_7_CFG ;
 int NIC_QSET_RQ_GEN_CFG ;
 int RQ_DROP_CQ_LVL ;
 int RQ_DROP_RBDR_LVL ;
 int RQ_PASS_CQ_LVL ;
 int RQ_PASS_RBDR_LVL ;
 int WARN_ON (int) ;
 int memset (struct rq_cfg*,int ,int) ;
 int nicvf_config_vlan_stripping (struct nicvf*,int ) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int) ;
 int nicvf_reclaim_rcv_queue (struct nicvf*,struct queue_set*,int) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;
 scalar_t__ xdp_rxq_info_reg (int *,TYPE_2__*,int) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void nicvf_rcv_queue_config(struct nicvf *nic, struct queue_set *qs,
       int qidx, bool enable)
{
 union nic_mbx mbx = {};
 struct rcv_queue *rq;
 struct rq_cfg rq_cfg;

 rq = &qs->rq[qidx];
 rq->enable = enable;


 nicvf_queue_reg_write(nic, NIC_QSET_RQ_0_7_CFG, qidx, 0);

 if (!rq->enable) {
  nicvf_reclaim_rcv_queue(nic, qs, qidx);
  xdp_rxq_info_unreg(&rq->xdp_rxq);
  return;
 }

 rq->cq_qs = qs->vnic_id;
 rq->cq_idx = qidx;
 rq->start_rbdr_qs = qs->vnic_id;
 rq->start_qs_rbdr_idx = qs->rbdr_cnt - 1;
 rq->cont_rbdr_qs = qs->vnic_id;
 rq->cont_qs_rbdr_idx = qs->rbdr_cnt - 1;

 rq->caching = 1;


 WARN_ON(xdp_rxq_info_reg(&rq->xdp_rxq, nic->netdev, qidx) < 0);


 mbx.rq.msg = NIC_MBOX_MSG_RQ_CFG;
 mbx.rq.qs_num = qs->vnic_id;
 mbx.rq.rq_num = qidx;
 mbx.rq.cfg = (rq->caching << 26) | (rq->cq_qs << 19) |
     (rq->cq_idx << 16) | (rq->cont_rbdr_qs << 9) |
     (rq->cont_qs_rbdr_idx << 8) |
     (rq->start_rbdr_qs << 1) | (rq->start_qs_rbdr_idx);
 nicvf_send_msg_to_pf(nic, &mbx);

 mbx.rq.msg = NIC_MBOX_MSG_RQ_BP_CFG;
 mbx.rq.cfg = BIT_ULL(63) | BIT_ULL(62) |
       (RQ_PASS_RBDR_LVL << 16) | (RQ_PASS_CQ_LVL << 8) |
       (qs->vnic_id << 0);
 nicvf_send_msg_to_pf(nic, &mbx);




 mbx.rq.msg = NIC_MBOX_MSG_RQ_DROP_CFG;
 mbx.rq.cfg = BIT_ULL(63) | BIT_ULL(62) |
       (RQ_PASS_RBDR_LVL << 40) | (RQ_DROP_RBDR_LVL << 32) |
       (RQ_PASS_CQ_LVL << 16) | (RQ_DROP_CQ_LVL << 8);
 nicvf_send_msg_to_pf(nic, &mbx);

 if (!nic->sqs_mode && (qidx == 0)) {



  nicvf_queue_reg_write(nic, NIC_QSET_RQ_GEN_CFG, 0,
          (BIT(24) | BIT(23) | BIT(21) | BIT(20)));
  nicvf_config_vlan_stripping(nic, nic->netdev->features);
 }


 memset(&rq_cfg, 0, sizeof(struct rq_cfg));
 rq_cfg.ena = 1;
 rq_cfg.tcp_ena = 0;
 nicvf_queue_reg_write(nic, NIC_QSET_RQ_0_7_CFG, qidx, *(u64 *)&rq_cfg);
}
