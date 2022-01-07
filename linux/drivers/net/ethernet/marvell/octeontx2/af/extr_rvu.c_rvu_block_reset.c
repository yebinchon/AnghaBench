
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu_block {int implemented; } ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_2__ {struct rvu_block* block; } ;


 int BIT_ULL (int) ;
 int rvu_poll_reg (struct rvu*,int,int ,int ,int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void rvu_block_reset(struct rvu *rvu, int blkaddr, u64 rst_reg)
{
 struct rvu_block *block = &rvu->hw->block[blkaddr];

 if (!block->implemented)
  return;

 rvu_write64(rvu, blkaddr, rst_reg, BIT_ULL(0));
 rvu_poll_reg(rvu, blkaddr, rst_reg, BIT_ULL(63), 1);
}
