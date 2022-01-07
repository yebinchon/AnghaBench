
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max; } ;
struct rvu_block {TYPE_2__ lf; } ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_3__ {struct rvu_block* block; } ;


 int BLKTYPE_NIX ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_get_nixlf_count(struct rvu *rvu)
{
 struct rvu_block *block;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, 0);
 if (blkaddr < 0)
  return 0;
 block = &rvu->hw->block[blkaddr];
 return block->lf.max;
}
