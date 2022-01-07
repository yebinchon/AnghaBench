
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bnx2x {TYPE_1__ common; } ;


 scalar_t__ INT_BLOCK_HC ;
 int barrier () ;
 int bnx2x_hc_ack_int (struct bnx2x*) ;
 int bnx2x_igu_ack_int (struct bnx2x*) ;

__attribute__((used)) static inline u16 bnx2x_ack_int(struct bnx2x *bp)
{
 barrier();
 if (bp->common.int_block == INT_BLOCK_HC)
  return bnx2x_hc_ack_int(bp);
 else
  return bnx2x_igu_ack_int(bp);
}
