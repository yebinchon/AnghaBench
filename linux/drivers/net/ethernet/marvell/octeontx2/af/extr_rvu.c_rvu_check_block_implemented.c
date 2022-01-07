
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int implemented; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int BIT_ULL (int) ;
 int BLK_COUNT ;
 int RVU_PF_BLOCK_ADDRX_DISC (int) ;
 int rvupf_read64 (struct rvu*,int ) ;

__attribute__((used)) static void rvu_check_block_implemented(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 int blkid;
 u64 cfg;


 for (blkid = 0; blkid < BLK_COUNT; blkid++) {
  block = &hw->block[blkid];
  cfg = rvupf_read64(rvu, RVU_PF_BLOCK_ADDRX_DISC(blkid));
  if (cfg & BIT_ULL(11))
   block->implemented = 1;
 }
}
