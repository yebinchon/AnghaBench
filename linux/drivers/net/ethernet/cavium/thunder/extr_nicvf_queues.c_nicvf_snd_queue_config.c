
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qs_num; int sq_num; int cfg; int sqs_mode; int msg; } ;
union nic_mbx {TYPE_1__ sq; } ;
typedef int u64 ;
struct sq_cfg {int ena; int cq_limit; scalar_t__ tstmp_bgx_intf; int qsize; scalar_t__ ldwb; scalar_t__ reset; } ;
struct TYPE_4__ {scalar_t__ phys_base; } ;
struct snd_queue {int enable; int cq_qs; int cq_idx; int affinity_mask; int thresh; TYPE_2__ dmem; } ;
struct queue_set {int vnic_id; int sq_len; int cq_len; struct snd_queue* sq; } ;
struct nicvf {int netdev; int sqs_mode; } ;


 int CMP_QUEUE_PIPELINE_RSVD ;
 int NICVF_SQ_RESET ;
 int NIC_MBOX_MSG_SQ_CFG ;
 int NIC_QSET_SQ_0_7_BASE ;
 int NIC_QSET_SQ_0_7_CFG ;
 int NIC_QSET_SQ_0_7_THRESH ;
 scalar_t__ cpu_online (int) ;
 int cpumask_set_cpu (int,int *) ;
 int ilog2 (int) ;
 int memset (struct sq_cfg*,int ,int) ;
 int netif_set_xps_queue (int ,int *,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;
 int nicvf_reclaim_snd_queue (struct nicvf*,struct queue_set*,int) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_snd_queue_config(struct nicvf *nic, struct queue_set *qs,
       int qidx, bool enable)
{
 union nic_mbx mbx = {};
 struct snd_queue *sq;
 struct sq_cfg sq_cfg;

 sq = &qs->sq[qidx];
 sq->enable = enable;

 if (!sq->enable) {
  nicvf_reclaim_snd_queue(nic, qs, qidx);
  return;
 }


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, NICVF_SQ_RESET);

 sq->cq_qs = qs->vnic_id;
 sq->cq_idx = qidx;


 mbx.sq.msg = NIC_MBOX_MSG_SQ_CFG;
 mbx.sq.qs_num = qs->vnic_id;
 mbx.sq.sq_num = qidx;
 mbx.sq.sqs_mode = nic->sqs_mode;
 mbx.sq.cfg = (sq->cq_qs << 3) | sq->cq_idx;
 nicvf_send_msg_to_pf(nic, &mbx);


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_BASE,
         qidx, (u64)(sq->dmem.phys_base));


 memset(&sq_cfg, 0, sizeof(struct sq_cfg));
 sq_cfg.ena = 1;
 sq_cfg.reset = 0;
 sq_cfg.ldwb = 0;
 sq_cfg.qsize = ilog2(qs->sq_len >> 10);
 sq_cfg.tstmp_bgx_intf = 0;



 sq_cfg.cq_limit = (CMP_QUEUE_PIPELINE_RSVD * 256) / qs->cq_len;
 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, *(u64 *)&sq_cfg);


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_THRESH, qidx, sq->thresh);


 if (cpu_online(qidx)) {
  cpumask_set_cpu(qidx, &sq->affinity_mask);
  netif_set_xps_queue(nic->netdev,
        &sq->affinity_mask, qidx);
 }
}
