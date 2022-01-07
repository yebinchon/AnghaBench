
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_queue {int free_cnt; } ;
struct sk_buff {scalar_t__ len; } ;
struct nicvf {TYPE_2__* drv_stats; TYPE_1__* qs; int netdev; scalar_t__* snicvf; scalar_t__ xdp_tx_queues; scalar_t__ xdp_prog; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int txq_stop; } ;
struct TYPE_3__ {struct snd_queue* sq; } ;


 scalar_t__ ETH_HLEN ;
 int MAX_SND_QUEUES_PER_QS ;
 scalar_t__ MIN_SQ_DESC_PER_PKT_XMIT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*,int) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int netif_warn (struct nicvf*,int ,struct net_device*,char*,int) ;
 int nicvf_sq_append_skb (struct nicvf*,struct snd_queue*,struct sk_buff*,int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int smp_mb () ;
 int this_cpu_inc (int ) ;
 int tx_err ;

__attribute__((used)) static netdev_tx_t nicvf_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct nicvf *nic = netdev_priv(netdev);
 int qid = skb_get_queue_mapping(skb);
 struct netdev_queue *txq = netdev_get_tx_queue(netdev, qid);
 struct nicvf *snic;
 struct snd_queue *sq;
 int tmp;


 if (skb->len <= ETH_HLEN) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }





 if (nic->xdp_prog)
  qid += nic->xdp_tx_queues;

 snic = nic;

 if (qid >= MAX_SND_QUEUES_PER_QS) {
  tmp = qid / MAX_SND_QUEUES_PER_QS;
  snic = (struct nicvf *)nic->snicvf[tmp - 1];
  if (!snic) {
   netdev_warn(nic->netdev,
        "Secondary Qset#%d's ptr not initialized\n",
        tmp - 1);
   dev_kfree_skb(skb);
   return NETDEV_TX_OK;
  }
  qid = qid % MAX_SND_QUEUES_PER_QS;
 }

 sq = &snic->qs->sq[qid];
 if (!netif_tx_queue_stopped(txq) &&
     !nicvf_sq_append_skb(snic, sq, skb, qid)) {
  netif_tx_stop_queue(txq);


  smp_mb();


  if (atomic_read(&sq->free_cnt) > MIN_SQ_DESC_PER_PKT_XMIT) {
   netif_tx_wake_queue(txq);
  } else {
   this_cpu_inc(nic->drv_stats->txq_stop);
   netif_warn(nic, tx_err, netdev,
       "Transmit ring full, stopping SQ%d\n", qid);
  }
  return NETDEV_TX_BUSY;
 }

 return NETDEV_TX_OK;
}
