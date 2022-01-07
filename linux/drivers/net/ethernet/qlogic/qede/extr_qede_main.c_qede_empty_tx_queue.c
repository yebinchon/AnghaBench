
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_tx_queue {int sw_tx_cons; int tx_pbl; int index; int ndev_txq_id; } ;
struct qede_dev {int ndev; } ;
struct netdev_queue {int dummy; } ;


 int DP_NOTICE (struct qede_dev*,char*,int ,scalar_t__,scalar_t__) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,scalar_t__,scalar_t__) ;
 int NETIF_MSG_IFDOWN ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;
 scalar_t__ qed_chain_get_prod_idx (int *) ;
 int qede_free_tx_pkt (struct qede_dev*,struct qede_tx_queue*,int*) ;

__attribute__((used)) static void qede_empty_tx_queue(struct qede_dev *edev,
    struct qede_tx_queue *txq)
{
 unsigned int pkts_compl = 0, bytes_compl = 0;
 struct netdev_queue *netdev_txq;
 int rc, len = 0;

 netdev_txq = netdev_get_tx_queue(edev->ndev, txq->ndev_txq_id);

 while (qed_chain_get_cons_idx(&txq->tx_pbl) !=
        qed_chain_get_prod_idx(&txq->tx_pbl)) {
  DP_VERBOSE(edev, NETIF_MSG_IFDOWN,
      "Freeing a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\n",
      txq->index, qed_chain_get_cons_idx(&txq->tx_pbl),
      qed_chain_get_prod_idx(&txq->tx_pbl));

  rc = qede_free_tx_pkt(edev, txq, &len);
  if (rc) {
   DP_NOTICE(edev,
      "Failed to free a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\n",
      txq->index,
      qed_chain_get_cons_idx(&txq->tx_pbl),
      qed_chain_get_prod_idx(&txq->tx_pbl));
   break;
  }

  bytes_compl += len;
  pkts_compl++;
  txq->sw_tx_cons++;
 }

 netdev_tx_completed_queue(netdev_txq, pkts_compl, bytes_compl);
}
