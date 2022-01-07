
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct i40e_ring {int tail; void* next_to_alloc; void* next_to_use; } ;


 int wmb () ;
 int writel (void*,int ) ;

void i40e_release_rx_desc(struct i40e_ring *rx_ring, u32 val)
{
 rx_ring->next_to_use = val;


 rx_ring->next_to_alloc = val;






 wmb();
 writel(val, rx_ring->tail);
}
