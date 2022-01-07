
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_4__ {scalar_t__ alloc_rx_page; scalar_t__ alloc_rx_buff_failed; scalar_t__ alloc_rx_page_failed; scalar_t__ csum_err; } ;
struct ixgbevf_ring {TYPE_2__ rx_stats; } ;
struct TYPE_3__ {int vfmprc; int last_vfmprc; int vfgotc; int last_vfgotc; int vfgorc; int last_vfgorc; int vfgptc; int last_vfgptc; int vfgprc; int last_vfgprc; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; void* alloc_rx_page; void* alloc_rx_buff_failed; void* alloc_rx_page_failed; void* hw_csum_rx_error; struct ixgbevf_ring** rx_ring; TYPE_1__ stats; int state; struct ixgbe_hw hw; } ;


 int IXGBE_VFGORC_LSB ;
 int IXGBE_VFGORC_MSB ;
 int IXGBE_VFGOTC_LSB ;
 int IXGBE_VFGOTC_MSB ;
 int IXGBE_VFGPRC ;
 int IXGBE_VFGPTC ;
 int IXGBE_VFMPRC ;
 int UPDATE_VF_COUNTER_32bit (int ,int ,int ) ;
 int UPDATE_VF_COUNTER_36bit (int ,int ,int ,int ) ;
 int __IXGBEVF_DOWN ;
 int __IXGBEVF_RESETTING ;
 scalar_t__ test_bit (int ,int *) ;

void ixgbevf_update_stats(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 alloc_rx_page_failed = 0, alloc_rx_buff_failed = 0;
 u64 alloc_rx_page = 0, hw_csum_rx_error = 0;
 int i;

 if (test_bit(__IXGBEVF_DOWN, &adapter->state) ||
     test_bit(__IXGBEVF_RESETTING, &adapter->state))
  return;

 UPDATE_VF_COUNTER_32bit(IXGBE_VFGPRC, adapter->stats.last_vfgprc,
    adapter->stats.vfgprc);
 UPDATE_VF_COUNTER_32bit(IXGBE_VFGPTC, adapter->stats.last_vfgptc,
    adapter->stats.vfgptc);
 UPDATE_VF_COUNTER_36bit(IXGBE_VFGORC_LSB, IXGBE_VFGORC_MSB,
    adapter->stats.last_vfgorc,
    adapter->stats.vfgorc);
 UPDATE_VF_COUNTER_36bit(IXGBE_VFGOTC_LSB, IXGBE_VFGOTC_MSB,
    adapter->stats.last_vfgotc,
    adapter->stats.vfgotc);
 UPDATE_VF_COUNTER_32bit(IXGBE_VFMPRC, adapter->stats.last_vfmprc,
    adapter->stats.vfmprc);

 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbevf_ring *rx_ring = adapter->rx_ring[i];

  hw_csum_rx_error += rx_ring->rx_stats.csum_err;
  alloc_rx_page_failed += rx_ring->rx_stats.alloc_rx_page_failed;
  alloc_rx_buff_failed += rx_ring->rx_stats.alloc_rx_buff_failed;
  alloc_rx_page += rx_ring->rx_stats.alloc_rx_page;
 }

 adapter->hw_csum_rx_error = hw_csum_rx_error;
 adapter->alloc_rx_page_failed = alloc_rx_page_failed;
 adapter->alloc_rx_buff_failed = alloc_rx_buff_failed;
 adapter->alloc_rx_page = alloc_rx_page;
}
