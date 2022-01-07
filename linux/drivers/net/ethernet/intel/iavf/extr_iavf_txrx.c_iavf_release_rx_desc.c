
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct iavf_ring {int tail; void* next_to_alloc; void* next_to_use; } ;


 int wmb () ;
 int writel (void*,int ) ;

__attribute__((used)) static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
{
 rx_ring->next_to_use = val;


 rx_ring->next_to_alloc = val;






 wmb();
 writel(val, rx_ring->tail);
}
