
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


struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {int state; } ;
struct TYPE_12__ {int tx_bytes; int tx_pkts; int restart_queue; int io_err_cnt; } ;
struct hns3_enet_ring {int next_to_clean; TYPE_6__ stats; TYPE_5__* tqp; int syncp; TYPE_4__* tqp_vector; int next_to_use; } ;
struct TYPE_11__ {int tqp_index; scalar_t__ io_base; TYPE_2__* handle; } ;
struct TYPE_9__ {int total_bytes; int total_packets; } ;
struct TYPE_10__ {TYPE_3__ tx_group; } ;
struct TYPE_7__ {struct net_device* netdev; } ;
struct TYPE_8__ {TYPE_1__ kinfo; } ;


 scalar_t__ HNS3_MAX_BD_PER_PKT ;
 int HNS3_NIC_STATE_DOWN ;
 scalar_t__ HNS3_RING_TX_RING_HEAD_REG ;
 int hns3_nic_reclaim_desc (struct hns3_enet_ring*,int,int*,int*) ;
 scalar_t__ is_ring_empty (struct hns3_enet_ring*) ;
 int is_valid_clean_head (struct hns3_enet_ring*,int) ;
 int netdev_err (struct net_device*,char*,int,int ,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_tx_completed_queue (struct netdev_queue*,int,int) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ ring_space (struct hns3_enet_ring*) ;
 int rmb () ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

void hns3_clean_tx_ring(struct hns3_enet_ring *ring)
{
 struct net_device *netdev = ring->tqp->handle->kinfo.netdev;
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct netdev_queue *dev_queue;
 int bytes, pkts;
 int head;

 head = readl_relaxed(ring->tqp->io_base + HNS3_RING_TX_RING_HEAD_REG);
 rmb();

 if (is_ring_empty(ring) || head == ring->next_to_clean)
  return;

 if (unlikely(!is_valid_clean_head(ring, head))) {
  netdev_err(netdev, "wrong head (%d, %d-%d)\n", head,
      ring->next_to_use, ring->next_to_clean);

  u64_stats_update_begin(&ring->syncp);
  ring->stats.io_err_cnt++;
  u64_stats_update_end(&ring->syncp);
  return;
 }

 bytes = 0;
 pkts = 0;
 hns3_nic_reclaim_desc(ring, head, &bytes, &pkts);

 ring->tqp_vector->tx_group.total_bytes += bytes;
 ring->tqp_vector->tx_group.total_packets += pkts;

 u64_stats_update_begin(&ring->syncp);
 ring->stats.tx_bytes += bytes;
 ring->stats.tx_pkts += pkts;
 u64_stats_update_end(&ring->syncp);

 dev_queue = netdev_get_tx_queue(netdev, ring->tqp->tqp_index);
 netdev_tx_completed_queue(dev_queue, pkts, bytes);

 if (unlikely(pkts && netif_carrier_ok(netdev) &&
       (ring_space(ring) > HNS3_MAX_BD_PER_PKT))) {



  smp_mb();
  if (netif_tx_queue_stopped(dev_queue) &&
      !test_bit(HNS3_NIC_STATE_DOWN, &priv->state)) {
   netif_tx_wake_queue(dev_queue);
   ring->stats.restart_queue++;
  }
 }
}
