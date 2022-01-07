
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ice_ring {int next_to_use; int next_to_alloc; int tail; } ;


 int wmb () ;
 int writel (int,int ) ;

__attribute__((used)) static void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
{
 u16 prev_ntu = rx_ring->next_to_use;

 rx_ring->next_to_use = val;


 rx_ring->next_to_alloc = val;






 val &= ~0x7;
 if (prev_ntu != val) {





  wmb();
  writel(val, rx_ring->tail);
 }
}
