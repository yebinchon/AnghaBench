
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tx_bytes; int xmit_finished; int xmit_called; int xmit_off; int xmit_on; } ;
struct qlcnic_host_tx_ring {TYPE_1__ tx_stats; } ;


 void* QLCNIC_FILL_STATS (int ) ;

__attribute__((used)) static u64 *qlcnic_fill_tx_queue_stats(u64 *data, void *stats)
{
 struct qlcnic_host_tx_ring *tx_ring;

 tx_ring = (struct qlcnic_host_tx_ring *)stats;

 *data++ = QLCNIC_FILL_STATS(tx_ring->tx_stats.xmit_on);
 *data++ = QLCNIC_FILL_STATS(tx_ring->tx_stats.xmit_off);
 *data++ = QLCNIC_FILL_STATS(tx_ring->tx_stats.xmit_called);
 *data++ = QLCNIC_FILL_STATS(tx_ring->tx_stats.xmit_finished);
 *data++ = QLCNIC_FILL_STATS(tx_ring->tx_stats.tx_bytes);

 return data;
}
