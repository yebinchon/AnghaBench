
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int bad_req_id; } ;
struct ena_ring {scalar_t__ ring_size; TYPE_2__* adapter; int syncp; TYPE_1__ rx_stats; int netdev; } ;
struct TYPE_4__ {int flags; int reset_reason; } ;


 int EFAULT ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_INV_RX_REQ_ID ;
 scalar_t__ likely (int) ;
 int netif_err (TYPE_2__*,int ,int ,char*,scalar_t__) ;
 int rx_err ;
 int set_bit (int ,int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int validate_rx_req_id(struct ena_ring *rx_ring, u16 req_id)
{
 if (likely(req_id < rx_ring->ring_size))
  return 0;

 netif_err(rx_ring->adapter, rx_err, rx_ring->netdev,
    "Invalid rx req_id: %hu\n", req_id);

 u64_stats_update_begin(&rx_ring->syncp);
 rx_ring->rx_stats.bad_req_id++;
 u64_stats_update_end(&rx_ring->syncp);


 rx_ring->adapter->reset_reason = ENA_REGS_RESET_INV_RX_REQ_ID;
 set_bit(ENA_FLAG_TRIGGER_RESET, &rx_ring->adapter->flags);
 return -EFAULT;
}
