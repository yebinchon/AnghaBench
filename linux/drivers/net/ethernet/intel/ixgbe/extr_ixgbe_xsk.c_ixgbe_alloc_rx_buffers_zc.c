
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_ring {int dummy; } ;


 int __ixgbe_alloc_rx_buffers_zc (struct ixgbe_ring*,int ,int ) ;
 int ixgbe_alloc_buffer_slow_zc ;

void ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 count)
{
 __ixgbe_alloc_rx_buffers_zc(rx_ring, count,
        ixgbe_alloc_buffer_slow_zc);
}
