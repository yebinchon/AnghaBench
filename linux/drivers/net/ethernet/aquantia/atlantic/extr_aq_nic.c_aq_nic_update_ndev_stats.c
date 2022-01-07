
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int multicast; int tx_errors; int tx_bytes; int tx_packets; int rx_dropped; int rx_errors; int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct aq_stats_s {int mprc; int erpt; int dma_oct_tc; int dma_pkt_tc; int dpc; int erpr; int dma_oct_rc; int dma_pkt_rc; } ;
struct aq_nic_s {int aq_hw; TYPE_1__* aq_hw_ops; struct net_device* ndev; } ;
struct TYPE_3__ {struct aq_stats_s* (* hw_get_hw_stats ) (int ) ;} ;


 struct aq_stats_s* stub1 (int ) ;

__attribute__((used)) static void aq_nic_update_ndev_stats(struct aq_nic_s *self)
{
 struct net_device *ndev = self->ndev;
 struct aq_stats_s *stats = self->aq_hw_ops->hw_get_hw_stats(self->aq_hw);

 ndev->stats.rx_packets = stats->dma_pkt_rc;
 ndev->stats.rx_bytes = stats->dma_oct_rc;
 ndev->stats.rx_errors = stats->erpr;
 ndev->stats.rx_dropped = stats->dpc;
 ndev->stats.tx_packets = stats->dma_pkt_tc;
 ndev->stats.tx_bytes = stats->dma_oct_tc;
 ndev->stats.tx_errors = stats->erpt;
 ndev->stats.multicast = stats->mprc;
}
