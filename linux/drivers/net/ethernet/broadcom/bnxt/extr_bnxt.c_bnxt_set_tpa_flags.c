
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int BNXT_FLAG_GRO ;
 int BNXT_FLAG_LRO ;
 int BNXT_FLAG_NO_AGG_RINGS ;
 int BNXT_FLAG_TPA ;
 int NETIF_F_GRO_HW ;
 int NETIF_F_LRO ;

void bnxt_set_tpa_flags(struct bnxt *bp)
{
 bp->flags &= ~BNXT_FLAG_TPA;
 if (bp->flags & BNXT_FLAG_NO_AGG_RINGS)
  return;
 if (bp->dev->features & NETIF_F_LRO)
  bp->flags |= BNXT_FLAG_LRO;
 else if (bp->dev->features & NETIF_F_GRO_HW)
  bp->flags |= BNXT_FLAG_GRO;
}
