
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_rx_buffer {unsigned int page_offset; } ;
struct ixgbe_ring {int dummy; } ;


 unsigned int IXGBE_SKB_PAD ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 scalar_t__ ring_uses_build_skb (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
     struct ixgbe_rx_buffer *rx_buffer,
     unsigned int size)
{

 unsigned int truesize = ixgbe_rx_pg_size(rx_ring) / 2;

 rx_buffer->page_offset ^= truesize;







}
