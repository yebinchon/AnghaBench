
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tx_stats ;
struct qlcnic_tx_queue_stats {int tx_bytes; int xmit_finished; int xmit_called; int xmit_off; int xmit_on; } ;
struct TYPE_3__ {scalar_t__ tx_bytes; scalar_t__ xmit_finished; scalar_t__ xmit_called; scalar_t__ xmit_off; scalar_t__ xmit_on; } ;
struct qlcnic_host_tx_ring {TYPE_1__ tx_stats; } ;
struct TYPE_4__ {int txbytes; int xmitfinished; int xmitcalled; int xmit_off; int xmit_on; } ;
struct qlcnic_adapter {int drv_tx_rings; TYPE_2__ stats; struct qlcnic_host_tx_ring* tx_ring; } ;


 int memset (struct qlcnic_tx_queue_stats*,int ,int) ;

void qlcnic_update_stats(struct qlcnic_adapter *adapter)
{
 struct qlcnic_tx_queue_stats tx_stats;
 struct qlcnic_host_tx_ring *tx_ring;
 int ring;

 memset(&tx_stats, 0, sizeof(tx_stats));
 for (ring = 0; ring < adapter->drv_tx_rings; ring++) {
  tx_ring = &adapter->tx_ring[ring];
  tx_stats.xmit_on += tx_ring->tx_stats.xmit_on;
  tx_stats.xmit_off += tx_ring->tx_stats.xmit_off;
  tx_stats.xmit_called += tx_ring->tx_stats.xmit_called;
  tx_stats.xmit_finished += tx_ring->tx_stats.xmit_finished;
  tx_stats.tx_bytes += tx_ring->tx_stats.tx_bytes;
 }

 adapter->stats.xmit_on = tx_stats.xmit_on;
 adapter->stats.xmit_off = tx_stats.xmit_off;
 adapter->stats.xmitcalled = tx_stats.xmit_called;
 adapter->stats.xmitfinished = tx_stats.xmit_finished;
 adapter->stats.txbytes = tx_stats.tx_bytes;
}
