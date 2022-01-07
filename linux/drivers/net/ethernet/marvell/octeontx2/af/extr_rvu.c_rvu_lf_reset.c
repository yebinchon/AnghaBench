
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_block {int lfreset_reg; int addr; int implemented; } ;
struct rvu {int dummy; } ;


 int BIT_ULL (int) ;
 int rvu_poll_reg (struct rvu*,int ,int ,int,int) ;
 int rvu_write64 (struct rvu*,int ,int ,int) ;

int rvu_lf_reset(struct rvu *rvu, struct rvu_block *block, int lf)
{
 int err;

 if (!block->implemented)
  return 0;

 rvu_write64(rvu, block->addr, block->lfreset_reg, lf | BIT_ULL(12));
 err = rvu_poll_reg(rvu, block->addr, block->lfreset_reg, BIT_ULL(12),
      1);
 return err;
}
