
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_rx_buffer {unsigned int page_offset; } ;
struct i40e_ring {int dummy; } ;


 unsigned int SKB_DATA_ALIGN (scalar_t__) ;
 scalar_t__ i40e_rx_offset (struct i40e_ring*) ;
 int i40e_rx_pg_size (struct i40e_ring*) ;

__attribute__((used)) static void i40e_rx_buffer_flip(struct i40e_ring *rx_ring,
    struct i40e_rx_buffer *rx_buffer,
    unsigned int size)
{

 unsigned int truesize = i40e_rx_pg_size(rx_ring) / 2;

 rx_buffer->page_offset ^= truesize;





}
