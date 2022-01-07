
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atl1e_rx_ring {int * desc; scalar_t__ real_page_size; scalar_t__ page_size; } ;
struct TYPE_4__ {int tx_lock; } ;
struct TYPE_3__ {scalar_t__ max_frame_size; } ;
struct atl1e_adapter {TYPE_2__ tx_ring; struct atl1e_rx_ring rx_ring; int * ring_vir_addr; int ring_size; TYPE_1__ hw; } ;


 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ VLAN_HLEN ;
 int atl1e_cal_ring_size (struct atl1e_adapter*,int *) ;
 scalar_t__ roundup (scalar_t__,int) ;
 int rwlock_init (int *) ;

__attribute__((used)) static void atl1e_init_ring_resources(struct atl1e_adapter *adapter)
{
 struct atl1e_rx_ring *rx_ring = ((void*)0);

 rx_ring = &adapter->rx_ring;

 rx_ring->real_page_size = adapter->rx_ring.page_size
     + adapter->hw.max_frame_size
     + ETH_HLEN + VLAN_HLEN
     + ETH_FCS_LEN;
 rx_ring->real_page_size = roundup(rx_ring->real_page_size, 32);
 atl1e_cal_ring_size(adapter, &adapter->ring_size);

 adapter->ring_vir_addr = ((void*)0);
 adapter->rx_ring.desc = ((void*)0);
 rwlock_init(&adapter->tx_ring.tx_lock);
}
