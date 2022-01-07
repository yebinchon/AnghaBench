
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_private {scalar_t__ tx_old; scalar_t__ tx_new; int tx_ring_mod_mask; } ;



__attribute__((used)) static int lance_tx_buffs_avail(struct lance_private *lp)
{
 if (lp->tx_old <= lp->tx_new)
  return lp->tx_old + lp->tx_ring_mod_mask - lp->tx_new;
 return lp->tx_old - lp->tx_new - 1;
}
