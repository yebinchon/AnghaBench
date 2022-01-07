
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct ena_tx_buffer {int skb; } ;
struct TYPE_3__ {int bad_req_id; } ;
struct ena_ring {size_t ring_size; TYPE_2__* adapter; int syncp; TYPE_1__ tx_stats; int netdev; struct ena_tx_buffer* tx_buffer_info; } ;
struct TYPE_4__ {int flags; int reset_reason; } ;


 int EFAULT ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_INV_TX_REQ_ID ;
 scalar_t__ likely (int) ;
 int netif_err (TYPE_2__*,int ,int ,char*,...) ;
 int set_bit (int ,int *) ;
 int tx_done ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int validate_tx_req_id(struct ena_ring *tx_ring, u16 req_id)
{
 struct ena_tx_buffer *tx_info = ((void*)0);

 if (likely(req_id < tx_ring->ring_size)) {
  tx_info = &tx_ring->tx_buffer_info[req_id];
  if (likely(tx_info->skb))
   return 0;
 }

 if (tx_info)
  netif_err(tx_ring->adapter, tx_done, tx_ring->netdev,
     "tx_info doesn't have valid skb\n");
 else
  netif_err(tx_ring->adapter, tx_done, tx_ring->netdev,
     "Invalid req_id: %hu\n", req_id);

 u64_stats_update_begin(&tx_ring->syncp);
 tx_ring->tx_stats.bad_req_id++;
 u64_stats_update_end(&tx_ring->syncp);


 tx_ring->adapter->reset_reason = ENA_REGS_RESET_INV_TX_REQ_ID;
 set_bit(ENA_FLAG_TRIGGER_RESET, &tx_ring->adapter->flags);
 return -EFAULT;
}
