
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbevf_ring {int tail; } ;


 int writel (int ,int ) ;

__attribute__((used)) static inline void ixgbevf_write_tail(struct ixgbevf_ring *ring, u32 value)
{
 writel(value, ring->tail);
}
