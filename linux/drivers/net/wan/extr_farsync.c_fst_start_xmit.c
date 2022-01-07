
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_errors; int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct fst_port_info {scalar_t__ index; size_t txqe; int txqs; int start; struct sk_buff** txq; struct fst_card_info* card; } ;
struct fst_card_info {scalar_t__ card_no; int card_lock; } ;
typedef int netdev_tx_t ;


 int DBG_ASS ;
 int DBG_TX ;
 int FST_TXQ_DEPTH ;
 scalar_t__ LEN_TX_BUFFER ;
 int NETDEV_TX_OK ;
 int dbg (int ,char*,scalar_t__,...) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct fst_port_info* dev_to_port (struct net_device*) ;
 int fst_q_work_item (int *,scalar_t__) ;
 int fst_tx_task ;
 int fst_txq_high ;
 int fst_work_txq ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static netdev_tx_t
fst_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct fst_card_info *card;
 struct fst_port_info *port;
 unsigned long flags;
 int txq_length;

 port = dev_to_port(dev);
 card = port->card;
 dbg(DBG_TX, "fst_start_xmit: length = %d\n", skb->len);


 if (!netif_carrier_ok(dev)) {
  dev_kfree_skb(skb);
  dev->stats.tx_errors++;
  dev->stats.tx_carrier_errors++;
  dbg(DBG_ASS,
      "Tried to transmit but no carrier on card %d port %d\n",
      card->card_no, port->index);
  return NETDEV_TX_OK;
 }


 if (skb->len > LEN_TX_BUFFER) {
  dbg(DBG_ASS, "Packet too large %d vs %d\n", skb->len,
      LEN_TX_BUFFER);
  dev_kfree_skb(skb);
  dev->stats.tx_errors++;
  return NETDEV_TX_OK;
 }






 spin_lock_irqsave(&card->card_lock, flags);
 if ((txq_length = port->txqe - port->txqs) < 0) {




  txq_length = txq_length + FST_TXQ_DEPTH;
 }
 spin_unlock_irqrestore(&card->card_lock, flags);
 if (txq_length > fst_txq_high) {




  netif_stop_queue(dev);
  port->start = 1;
 }

 if (txq_length == FST_TXQ_DEPTH - 1) {



  dev_kfree_skb(skb);
  dev->stats.tx_errors++;
  dbg(DBG_ASS, "Tx queue overflow card %d port %d\n",
      card->card_no, port->index);
  return NETDEV_TX_OK;
 }




 spin_lock_irqsave(&card->card_lock, flags);
 port->txq[port->txqe] = skb;
 port->txqe++;
 if (port->txqe == FST_TXQ_DEPTH)
  port->txqe = 0;
 spin_unlock_irqrestore(&card->card_lock, flags);


 fst_q_work_item(&fst_work_txq, card->card_no);
 tasklet_schedule(&fst_tx_task);

 return NETDEV_TX_OK;
}
