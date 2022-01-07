
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ena_ring {scalar_t__ empty_rx_queue; int smoothed_interval; int sgl_size; int rx_copybreak; int ring_size; int tx_mem_queue_type; int tx_max_header_size; } ;
struct ena_com_dev {int tx_mem_queue_type; int tx_max_header_size; } ;
struct ena_adapter {int num_queues; TYPE_2__* ena_napi; int max_rx_sgl_size; int rx_copybreak; int requested_rx_ring_size; int max_tx_sgl_size; int requested_tx_ring_size; struct ena_ring* rx_ring; struct ena_ring* tx_ring; struct ena_com_dev* ena_dev; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ dim; } ;


 int DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int ena_com_get_nonadaptive_moderation_interval_rx (struct ena_com_dev*) ;
 int ena_com_get_nonadaptive_moderation_interval_tx (struct ena_com_dev*) ;
 int ena_init_io_rings_common (struct ena_adapter*,struct ena_ring*,int) ;

__attribute__((used)) static void ena_init_io_rings(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev;
 struct ena_ring *txr, *rxr;
 int i;

 ena_dev = adapter->ena_dev;

 for (i = 0; i < adapter->num_queues; i++) {
  txr = &adapter->tx_ring[i];
  rxr = &adapter->rx_ring[i];


  ena_init_io_rings_common(adapter, txr, i);
  ena_init_io_rings_common(adapter, rxr, i);


  txr->ring_size = adapter->requested_tx_ring_size;
  txr->tx_max_header_size = ena_dev->tx_max_header_size;
  txr->tx_mem_queue_type = ena_dev->tx_mem_queue_type;
  txr->sgl_size = adapter->max_tx_sgl_size;
  txr->smoothed_interval =
   ena_com_get_nonadaptive_moderation_interval_tx(ena_dev);


  rxr->ring_size = adapter->requested_rx_ring_size;
  rxr->rx_copybreak = adapter->rx_copybreak;
  rxr->sgl_size = adapter->max_rx_sgl_size;
  rxr->smoothed_interval =
   ena_com_get_nonadaptive_moderation_interval_rx(ena_dev);
  rxr->empty_rx_queue = 0;
  adapter->ena_napi[i].dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 }
}
