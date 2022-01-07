
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring {unsigned int rdesc_count; unsigned int cur; unsigned int dirty; } ;



__attribute__((used)) static inline unsigned int xgbe_tx_avail_desc(struct xgbe_ring *ring)
{
 return (ring->rdesc_count - (ring->cur - ring->dirty));
}
