
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qede_tx_queue {int sw_tx_cons; int num_tx_buffers; int tx_pbl; int xmit_pkts; int * hw_cons_ptr; int ndev_txq_id; } ;
struct qede_dev {scalar_t__ state; int ndev; } ;
struct netdev_queue {int dummy; } ;


 int DP_NOTICE (struct qede_dev*,char*,scalar_t__,scalar_t__) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*) ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETIF_MSG_TX_DONE ;
 scalar_t__ QEDE_STATE_OPEN ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 int barrier () ;
 scalar_t__ le16_to_cpu (int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;
 scalar_t__ qed_chain_get_elem_left (int *) ;
 int qede_free_tx_pkt (struct qede_dev*,struct qede_tx_queue*,int*) ;
 int smp_mb () ;
 int smp_processor_id () ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static int qede_tx_int(struct qede_dev *edev, struct qede_tx_queue *txq)
{
 unsigned int pkts_compl = 0, bytes_compl = 0;
 struct netdev_queue *netdev_txq;
 u16 hw_bd_cons;
 int rc;

 netdev_txq = netdev_get_tx_queue(edev->ndev, txq->ndev_txq_id);

 hw_bd_cons = le16_to_cpu(*txq->hw_cons_ptr);
 barrier();

 while (hw_bd_cons != qed_chain_get_cons_idx(&txq->tx_pbl)) {
  int len = 0;

  rc = qede_free_tx_pkt(edev, txq, &len);
  if (rc) {
   DP_NOTICE(edev, "hw_bd_cons = %d, chain_cons=%d\n",
      hw_bd_cons,
      qed_chain_get_cons_idx(&txq->tx_pbl));
   break;
  }

  bytes_compl += len;
  pkts_compl++;
  txq->sw_tx_cons = (txq->sw_tx_cons + 1) % txq->num_tx_buffers;
  txq->xmit_pkts++;
 }

 netdev_tx_completed_queue(netdev_txq, pkts_compl, bytes_compl);
 smp_mb();

 if (unlikely(netif_tx_queue_stopped(netdev_txq))) {
  __netif_tx_lock(netdev_txq, smp_processor_id());

  if ((netif_tx_queue_stopped(netdev_txq)) &&
      (edev->state == QEDE_STATE_OPEN) &&
      (qed_chain_get_elem_left(&txq->tx_pbl)
        >= (MAX_SKB_FRAGS + 1))) {
   netif_tx_wake_queue(netdev_txq);
   DP_VERBOSE(edev, NETIF_MSG_TX_DONE,
       "Wake queue was called\n");
  }

  __netif_tx_unlock(netdev_txq);
 }

 return 0;
}
