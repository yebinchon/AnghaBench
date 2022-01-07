
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct netdev_queue {unsigned long trans_start; } ;
struct net_device {int num_tx_queues; scalar_t__ watchdog_timeo; } ;
struct napi_struct {int state; } ;
struct hns3_nic_priv {int tx_timeout_count; TYPE_1__* ring_data; } ;
struct hns3_mac_stats {int rx_pause_cnt; int tx_pause_cnt; } ;
struct TYPE_8__ {int tx_busy; int restart_queue; int tx_err_cnt; int seg_pkt_cnt; int sw_err_cnt; int io_err_cnt; int tx_bytes; int tx_pkts; } ;
struct hns3_enet_ring {TYPE_6__* tqp_vector; TYPE_5__* tqp; TYPE_2__ stats; int next_to_clean; int next_to_use; } ;
struct hnae3_handle {TYPE_4__* ae_algo; } ;
struct TYPE_12__ {int mask_addr; struct napi_struct napi; } ;
struct TYPE_11__ {scalar_t__ io_base; } ;
struct TYPE_10__ {TYPE_3__* ops; } ;
struct TYPE_9__ {int (* get_mac_stats ) (struct hnae3_handle*,struct hns3_mac_stats*) ;} ;
struct TYPE_7__ {struct hns3_enet_ring* ring; } ;


 scalar_t__ HNS3_RING_EN_REG ;
 scalar_t__ HNS3_RING_TX_RING_BD_ERR_REG ;
 scalar_t__ HNS3_RING_TX_RING_BD_NUM_REG ;
 scalar_t__ HNS3_RING_TX_RING_EBDNUM_REG ;
 scalar_t__ HNS3_RING_TX_RING_EBD_OFFSET_REG ;
 scalar_t__ HNS3_RING_TX_RING_FBDNUM_REG ;
 scalar_t__ HNS3_RING_TX_RING_HEAD_REG ;
 scalar_t__ HNS3_RING_TX_RING_OFFSET_REG ;
 scalar_t__ HNS3_RING_TX_RING_TAIL_REG ;
 scalar_t__ HNS3_RING_TX_RING_TC_REG ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int jiffies ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 int netdev_info (struct net_device*,char*,int,...) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_xmit_stopped (struct netdev_queue*) ;
 int readl (int ) ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct hnae3_handle*,struct hns3_mac_stats*) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static bool hns3_get_tx_timeo_queue_info(struct net_device *ndev)
{
 struct hns3_nic_priv *priv = netdev_priv(ndev);
 struct hnae3_handle *h = hns3_get_handle(ndev);
 struct hns3_enet_ring *tx_ring = ((void*)0);
 struct napi_struct *napi;
 int timeout_queue = 0;
 int hw_head, hw_tail;
 int fbd_num, fbd_oft;
 int ebd_num, ebd_oft;
 int bd_num, bd_err;
 int ring_en, tc;
 int i;


 for (i = 0; i < ndev->num_tx_queues; i++) {
  struct netdev_queue *q;
  unsigned long trans_start;

  q = netdev_get_tx_queue(ndev, i);
  trans_start = q->trans_start;
  if (netif_xmit_stopped(q) &&
      time_after(jiffies,
          (trans_start + ndev->watchdog_timeo))) {
   timeout_queue = i;
   break;
  }
 }

 if (i == ndev->num_tx_queues) {
  netdev_info(ndev,
       "no netdev TX timeout queue found, timeout count: %llu\n",
       priv->tx_timeout_count);
  return 0;
 }

 priv->tx_timeout_count++;

 tx_ring = priv->ring_data[timeout_queue].ring;
 napi = &tx_ring->tqp_vector->napi;

 netdev_info(ndev,
      "tx_timeout count: %llu, queue id: %d, SW_NTU: 0x%x, SW_NTC: 0x%x, napi state: %lu\n",
      priv->tx_timeout_count, timeout_queue, tx_ring->next_to_use,
      tx_ring->next_to_clean, napi->state);

 netdev_info(ndev,
      "tx_pkts: %llu, tx_bytes: %llu, io_err_cnt: %llu, sw_err_cnt: %llu\n",
      tx_ring->stats.tx_pkts, tx_ring->stats.tx_bytes,
      tx_ring->stats.io_err_cnt, tx_ring->stats.sw_err_cnt);

 netdev_info(ndev,
      "seg_pkt_cnt: %llu, tx_err_cnt: %llu, restart_queue: %llu, tx_busy: %llu\n",
      tx_ring->stats.seg_pkt_cnt, tx_ring->stats.tx_err_cnt,
      tx_ring->stats.restart_queue, tx_ring->stats.tx_busy);




 if (h->ae_algo->ops->get_mac_stats) {
  struct hns3_mac_stats mac_stats;

  h->ae_algo->ops->get_mac_stats(h, &mac_stats);
  netdev_info(ndev, "tx_pause_cnt: %llu, rx_pause_cnt: %llu\n",
       mac_stats.tx_pause_cnt, mac_stats.rx_pause_cnt);
 }

 hw_head = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_HEAD_REG);
 hw_tail = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_TAIL_REG);
 fbd_num = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_FBDNUM_REG);
 fbd_oft = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_OFFSET_REG);
 ebd_num = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_EBDNUM_REG);
 ebd_oft = readl_relaxed(tx_ring->tqp->io_base +
    HNS3_RING_TX_RING_EBD_OFFSET_REG);
 bd_num = readl_relaxed(tx_ring->tqp->io_base +
          HNS3_RING_TX_RING_BD_NUM_REG);
 bd_err = readl_relaxed(tx_ring->tqp->io_base +
          HNS3_RING_TX_RING_BD_ERR_REG);
 ring_en = readl_relaxed(tx_ring->tqp->io_base + HNS3_RING_EN_REG);
 tc = readl_relaxed(tx_ring->tqp->io_base + HNS3_RING_TX_RING_TC_REG);

 netdev_info(ndev,
      "BD_NUM: 0x%x HW_HEAD: 0x%x, HW_TAIL: 0x%x, BD_ERR: 0x%x, INT: 0x%x\n",
      bd_num, hw_head, hw_tail, bd_err,
      readl(tx_ring->tqp_vector->mask_addr));
 netdev_info(ndev,
      "RING_EN: 0x%x, TC: 0x%x, FBD_NUM: 0x%x FBD_OFT: 0x%x, EBD_NUM: 0x%x, EBD_OFT: 0x%x\n",
      ring_en, tc, fbd_num, fbd_oft, ebd_num, ebd_oft);

 return 1;
}
