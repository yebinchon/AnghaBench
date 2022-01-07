
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int aq; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int BLKTYPE_NPA ;
 int rvu_aq_free (struct rvu*,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

void rvu_npa_freemem(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPA, 0);
 if (blkaddr < 0)
  return;

 block = &hw->block[blkaddr];
 rvu_aq_free(rvu, block->aq);
}
