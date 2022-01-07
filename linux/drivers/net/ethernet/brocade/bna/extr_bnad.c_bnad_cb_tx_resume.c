
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnad_tx_info {struct bna_tcb** tcb; } ;
struct TYPE_2__ {int enet; } ;
struct bnad {int perm_addr; TYPE_1__ bna; int netdev; } ;
struct bna_tx {scalar_t__ priv; } ;
struct bna_tcb {scalar_t__* hw_consumer_index; int flags; int id; } ;


 int BNAD_MAX_TXQ_PER_TX ;
 int BNAD_TXQ_TX_STARTED ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 int BUG_ON (int) ;
 int bna_enet_perm_mac_get (int *,int ) ;
 int bnad_set_netdev_perm_addr (struct bnad*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_queue_wakeup ;
 int netif_wake_subqueue (int ,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
bnad_cb_tx_resume(struct bnad *bnad, struct bna_tx *tx)
{
 struct bnad_tx_info *tx_info = (struct bnad_tx_info *)tx->priv;
 struct bna_tcb *tcb;
 u32 txq_id;
 int i;

 for (i = 0; i < BNAD_MAX_TXQ_PER_TX; i++) {
  tcb = tx_info->tcb[i];
  if (!tcb)
   continue;
  txq_id = tcb->id;

  BUG_ON(test_bit(BNAD_TXQ_TX_STARTED, &tcb->flags));
  set_bit(BNAD_TXQ_TX_STARTED, &tcb->flags);
  BUG_ON(*(tcb->hw_consumer_index) != 0);

  if (netif_carrier_ok(bnad->netdev)) {
   netif_wake_subqueue(bnad->netdev, txq_id);
   BNAD_UPDATE_CTR(bnad, netif_queue_wakeup);
  }
 }






 if (is_zero_ether_addr(bnad->perm_addr)) {
  bna_enet_perm_mac_get(&bnad->bna.enet, bnad->perm_addr);
  bnad_set_netdev_perm_addr(bnad);
 }
}
