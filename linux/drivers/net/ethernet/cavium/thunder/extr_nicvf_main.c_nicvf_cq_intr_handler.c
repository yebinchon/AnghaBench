
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct snd_queue {int free_cnt; } ;
struct rcv_queue {int dummy; } ;
struct queue_set {struct rcv_queue* rq; struct snd_queue* sq; struct cmp_queue* cq; } ;
struct nicvf {unsigned int xdp_tx_queues; TYPE_2__* drv_stats; struct nicvf* pnicvf; struct net_device* netdev; scalar_t__ xdp_prog; struct queue_set* qs; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct cqe_rx_t {int cqe_type; } ;
struct TYPE_3__ {int q_len; } ;
struct cmp_queue {int lock; TYPE_1__ dmem; } ;
struct TYPE_4__ {int txq_wake; } ;
 int CQ_CQE_COUNT ;
 scalar_t__ GET_CQ_DESC (struct cmp_queue*,int) ;
 scalar_t__ MIN_SQ_DESC_PER_PKT_XMIT ;
 int NIC_QSET_CQ_0_7_DOOR ;
 int NIC_QSET_CQ_0_7_HEAD ;
 int NIC_QSET_CQ_0_7_STATUS ;
 scalar_t__ atomic_read (int *) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int netif_warn (struct nicvf*,int ,struct net_device*,char*,unsigned int) ;
 unsigned int nicvf_netdev_qidx (struct nicvf*,size_t) ;
 int nicvf_put_sq_desc (struct snd_queue*,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,size_t) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,size_t,int) ;
 int nicvf_rcv_pkt_handler (struct net_device*,struct napi_struct*,struct cqe_rx_t*,struct snd_queue*,struct rcv_queue*) ;
 int nicvf_snd_pkt_handler (struct net_device*,void*,int,int*,unsigned int*,unsigned int*) ;
 int nicvf_snd_ptp_handler (struct net_device*,void*) ;
 int nicvf_xdp_sq_doorbell (struct nicvf*,struct snd_queue*,size_t) ;
 int prefetch (struct cqe_rx_t*) ;
 int smp_mb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int this_cpu_inc (int ) ;
 int tx_err ;

__attribute__((used)) static int nicvf_cq_intr_handler(struct net_device *netdev, u8 cq_idx,
     struct napi_struct *napi, int budget)
{
 int processed_cqe, work_done = 0, tx_done = 0;
 int cqe_count, cqe_head;
 int subdesc_cnt = 0;
 struct nicvf *nic = netdev_priv(netdev);
 struct queue_set *qs = nic->qs;
 struct cmp_queue *cq = &qs->cq[cq_idx];
 struct cqe_rx_t *cq_desc;
 struct netdev_queue *txq;
 struct snd_queue *sq = &qs->sq[cq_idx];
 struct rcv_queue *rq = &qs->rq[cq_idx];
 unsigned int tx_pkts = 0, tx_bytes = 0, txq_idx;

 spin_lock_bh(&cq->lock);
loop:
 processed_cqe = 0;

 cqe_count = nicvf_queue_reg_read(nic, NIC_QSET_CQ_0_7_STATUS, cq_idx);
 cqe_count &= CQ_CQE_COUNT;
 if (!cqe_count)
  goto done;


 cqe_head = nicvf_queue_reg_read(nic, NIC_QSET_CQ_0_7_HEAD, cq_idx) >> 9;
 cqe_head &= 0xFFFF;

 while (processed_cqe < cqe_count) {

  cq_desc = (struct cqe_rx_t *)GET_CQ_DESC(cq, cqe_head);
  cqe_head++;
  cqe_head &= (cq->dmem.q_len - 1);

  prefetch((struct cqe_rx_t *)GET_CQ_DESC(cq, cqe_head));

  if ((work_done >= budget) && napi &&
      (cq_desc->cqe_type != 129)) {
   break;
  }

  switch (cq_desc->cqe_type) {
  case 132:
   nicvf_rcv_pkt_handler(netdev, napi, cq_desc, sq, rq);
   work_done++;
  break;
  case 129:
   nicvf_snd_pkt_handler(netdev, (void *)cq_desc,
           budget, &subdesc_cnt,
           &tx_pkts, &tx_bytes);
   tx_done++;
  break;
  case 128:
   nicvf_snd_ptp_handler(netdev, (void *)cq_desc);
  break;
  case 133:
  case 131:
  case 130:

  break;
  }
  processed_cqe++;
 }


 nicvf_queue_reg_write(nic, NIC_QSET_CQ_0_7_DOOR,
         cq_idx, processed_cqe);

 if ((work_done < budget) && napi)
  goto loop;

done:

 if (subdesc_cnt)
  nicvf_put_sq_desc(sq, subdesc_cnt);

 txq_idx = nicvf_netdev_qidx(nic, cq_idx);

 if (nic->pnicvf->xdp_prog) {
  if (txq_idx < nic->pnicvf->xdp_tx_queues) {
   nicvf_xdp_sq_doorbell(nic, sq, cq_idx);
   goto out;
  }
  nic = nic->pnicvf;
  txq_idx -= nic->pnicvf->xdp_tx_queues;
 }


 if (tx_done ||
     (atomic_read(&sq->free_cnt) >= MIN_SQ_DESC_PER_PKT_XMIT)) {
  netdev = nic->pnicvf->netdev;
  txq = netdev_get_tx_queue(netdev, txq_idx);
  if (tx_pkts)
   netdev_tx_completed_queue(txq, tx_pkts, tx_bytes);


  smp_mb();
  if (netif_tx_queue_stopped(txq) && netif_carrier_ok(netdev)) {
   netif_tx_wake_queue(txq);
   nic = nic->pnicvf;
   this_cpu_inc(nic->drv_stats->txq_wake);
   netif_warn(nic, tx_err, netdev,
       "Transmit queue wakeup SQ%d\n", txq_idx);
  }
 }

out:
 spin_unlock_bh(&cq->lock);
 return work_done;
}
