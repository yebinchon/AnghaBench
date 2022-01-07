
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_ring {int dummy; } ;


 int __i40e_alloc_rx_buffers_zc (struct i40e_ring*,int ,int ) ;
 int i40e_alloc_buffer_slow_zc ;

bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 count)
{
 return __i40e_alloc_rx_buffers_zc(rx_ring, count,
       i40e_alloc_buffer_slow_zc);
}
