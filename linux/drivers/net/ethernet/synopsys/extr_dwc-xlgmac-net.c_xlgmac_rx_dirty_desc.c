
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {unsigned int cur; unsigned int dirty; } ;



__attribute__((used)) static inline unsigned int xlgmac_rx_dirty_desc(struct xlgmac_ring *ring)
{
 return (ring->cur - ring->dirty);
}
