
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int implemented; } ;


 int BLKADDR_RVUM ;
 int BLK_COUNT ;

bool is_block_implemented(struct rvu_hwinfo *hw, int blkaddr)
{
 struct rvu_block *block;

 if (blkaddr < BLKADDR_RVUM || blkaddr >= BLK_COUNT)
  return 0;

 block = &hw->block[blkaddr];
 return block->implemented;
}
