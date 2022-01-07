
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int tx_ring_size; } ;



__attribute__((used)) static unsigned int macb_tx_ring_wrap(struct macb *bp, unsigned int index)
{
 return index & (bp->tx_ring_size - 1);
}
