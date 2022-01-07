
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ int_block; } ;
struct bnx2x {TYPE_1__ common; } ;


 scalar_t__ INT_BLOCK_HC ;
 int bnx2x_hc_int_disable (struct bnx2x*) ;
 int bnx2x_igu_int_disable (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_int_disable(struct bnx2x *bp)
{
 if (bp->common.int_block == INT_BLOCK_HC)
  bnx2x_hc_int_disable(bp);
 else
  bnx2x_igu_int_disable(bp);
}
