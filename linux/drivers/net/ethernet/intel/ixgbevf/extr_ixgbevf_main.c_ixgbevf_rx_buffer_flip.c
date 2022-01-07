
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_rx_buffer {unsigned int page_offset; } ;
struct ixgbevf_ring {int dummy; } ;


 unsigned int IXGBEVF_SKB_PAD ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 int ixgbevf_rx_pg_size (struct ixgbevf_ring*) ;
 scalar_t__ ring_uses_build_skb (struct ixgbevf_ring*) ;

__attribute__((used)) static void ixgbevf_rx_buffer_flip(struct ixgbevf_ring *rx_ring,
       struct ixgbevf_rx_buffer *rx_buffer,
       unsigned int size)
{

 unsigned int truesize = ixgbevf_rx_pg_size(rx_ring) / 2;

 rx_buffer->page_offset ^= truesize;







}
