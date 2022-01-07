
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int rx_ring_size; } ;



__attribute__((used)) static unsigned int macb_rx_ring_wrap(struct macb *bp, unsigned int index)
{
 return index & (bp->rx_ring_size - 1);
}
