
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct rvu_block {scalar_t__ addr; int type; } ;
struct rvu {int dev; TYPE_1__* hw; } ;
struct TYPE_2__ {struct rvu_block* block; } ;


 scalar_t__ BLKADDR_NIX0 ;
 scalar_t__ BLKADDR_NPA ;
 int dev_err (int ,char*,scalar_t__,int) ;
 int rvu_get_lf (struct rvu*,struct rvu_block*,int ,int) ;
 int rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_get_rsrc_mapcount (int ,int ) ;
 int rvu_lf_reset (struct rvu*,struct rvu_block*,int) ;
 int rvu_nix_lf_teardown (struct rvu*,int ,scalar_t__,int) ;
 int rvu_npa_lf_teardown (struct rvu*,int ,int) ;

__attribute__((used)) static void rvu_blklf_teardown(struct rvu *rvu, u16 pcifunc, u8 blkaddr)
{
 struct rvu_block *block;
 int slot, lf, num_lfs;
 int err;

 block = &rvu->hw->block[blkaddr];
 num_lfs = rvu_get_rsrc_mapcount(rvu_get_pfvf(rvu, pcifunc),
     block->type);
 if (!num_lfs)
  return;
 for (slot = 0; slot < num_lfs; slot++) {
  lf = rvu_get_lf(rvu, block, pcifunc, slot);
  if (lf < 0)
   continue;


  if (block->addr == BLKADDR_NIX0)
   rvu_nix_lf_teardown(rvu, pcifunc, block->addr, lf);
  else if (block->addr == BLKADDR_NPA)
   rvu_npa_lf_teardown(rvu, pcifunc, lf);

  err = rvu_lf_reset(rvu, block, lf);
  if (err) {
   dev_err(rvu->dev, "Failed to reset blkaddr %d LF%d\n",
    block->addr, lf);
  }
 }
}
