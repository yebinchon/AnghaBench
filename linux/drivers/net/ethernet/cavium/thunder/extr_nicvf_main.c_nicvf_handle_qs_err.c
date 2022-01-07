
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct queue_set {int cq_cnt; int * sq; } ;
struct nicvf {int netdev; struct queue_set* qs; } ;


 int CQ_ERR_MASK ;
 int NICVF_INTR_CQ ;
 int NICVF_INTR_QS_ERR ;
 int NIC_QSET_CQ_0_7_STATUS ;
 int netif_tx_disable (int ) ;
 int netif_tx_start_all_queues (int ) ;
 int nicvf_cmp_queue_config (struct nicvf*,struct queue_set*,int,int) ;
 int nicvf_cq_intr_handler (int ,int,int *,int ) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_enable_intr (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;
 int nicvf_sq_disable (struct nicvf*,int) ;
 int nicvf_sq_enable (struct nicvf*,int *,int) ;
 int nicvf_sq_free_used_descs (int ,int *,int) ;

__attribute__((used)) static void nicvf_handle_qs_err(unsigned long data)
{
 struct nicvf *nic = (struct nicvf *)data;
 struct queue_set *qs = nic->qs;
 int qidx;
 u64 status;

 netif_tx_disable(nic->netdev);


 for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
  status = nicvf_queue_reg_read(nic, NIC_QSET_CQ_0_7_STATUS,
           qidx);
  if (!(status & CQ_ERR_MASK))
   continue;

  nicvf_disable_intr(nic, NICVF_INTR_CQ, qidx);
  nicvf_sq_disable(nic, qidx);
  nicvf_cq_intr_handler(nic->netdev, qidx, ((void*)0), 0);
  nicvf_cmp_queue_config(nic, qs, qidx, 1);
  nicvf_sq_free_used_descs(nic->netdev, &qs->sq[qidx], qidx);
  nicvf_sq_enable(nic, &qs->sq[qidx], qidx);

  nicvf_enable_intr(nic, NICVF_INTR_CQ, qidx);
 }

 netif_tx_start_all_queues(nic->netdev);

 nicvf_enable_intr(nic, NICVF_INTR_QS_ERR, 0);
}
