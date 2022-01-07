
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u32 ;
struct bnad {size_t num_tx; size_t num_txq_per_tx; int netdev; TYPE_1__* tx_info; int run_flags; } ;
struct bna_tcb {int flags; int id; } ;
typedef enum bna_link_status { ____Placeholder_bna_link_status } bna_link_status ;
struct TYPE_2__ {struct bna_tcb** tcb; } ;


 int BNAD_RF_CEE_RUNNING ;
 int BNAD_TXQ_TX_STARTED ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 int BNA_CEE_UP ;
 int BNA_LINK_UP ;
 int cee_toggle ;
 int clear_bit (int ,int *) ;
 int link_toggle ;
 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_queue_stop ;
 int netif_queue_wakeup ;
 int netif_stop_subqueue (int ,int ) ;
 int netif_wake_subqueue (int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
bnad_cb_ethport_link_status(struct bnad *bnad,
   enum bna_link_status link_status)
{
 bool link_up = 0;

 link_up = (link_status == BNA_LINK_UP) || (link_status == BNA_CEE_UP);

 if (link_status == BNA_CEE_UP) {
  if (!test_bit(BNAD_RF_CEE_RUNNING, &bnad->run_flags))
   BNAD_UPDATE_CTR(bnad, cee_toggle);
  set_bit(BNAD_RF_CEE_RUNNING, &bnad->run_flags);
 } else {
  if (test_bit(BNAD_RF_CEE_RUNNING, &bnad->run_flags))
   BNAD_UPDATE_CTR(bnad, cee_toggle);
  clear_bit(BNAD_RF_CEE_RUNNING, &bnad->run_flags);
 }

 if (link_up) {
  if (!netif_carrier_ok(bnad->netdev)) {
   uint tx_id, tcb_id;
   netdev_info(bnad->netdev, "link up\n");
   netif_carrier_on(bnad->netdev);
   BNAD_UPDATE_CTR(bnad, link_toggle);
   for (tx_id = 0; tx_id < bnad->num_tx; tx_id++) {
    for (tcb_id = 0; tcb_id < bnad->num_txq_per_tx;
          tcb_id++) {
     struct bna_tcb *tcb =
     bnad->tx_info[tx_id].tcb[tcb_id];
     u32 txq_id;
     if (!tcb)
      continue;

     txq_id = tcb->id;

     if (test_bit(BNAD_TXQ_TX_STARTED,
           &tcb->flags)) {



      netif_wake_subqueue(
        bnad->netdev,
        txq_id);
      BNAD_UPDATE_CTR(bnad,
       netif_queue_wakeup);
     } else {
      netif_stop_subqueue(
        bnad->netdev,
        txq_id);
      BNAD_UPDATE_CTR(bnad,
       netif_queue_stop);
     }
    }
   }
  }
 } else {
  if (netif_carrier_ok(bnad->netdev)) {
   netdev_info(bnad->netdev, "link down\n");
   netif_carrier_off(bnad->netdev);
   BNAD_UPDATE_CTR(bnad, link_toggle);
  }
 }
}
