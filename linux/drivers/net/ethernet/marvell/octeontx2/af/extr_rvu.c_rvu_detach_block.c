
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_pfvf {int dummy; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int lfcfg_reg; int lfshift; int lf; int type; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int rvu_clear_msix_offset (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int) ;
 int rvu_free_rsrc (int *,int) ;
 int rvu_get_blkaddr (struct rvu*,int,int) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int) ;
 int rvu_get_rsrc_mapcount (struct rvu_pfvf*,int ) ;
 int rvu_lookup_rsrc (struct rvu*,struct rvu_block*,int,int) ;
 int rvu_update_rsrc_map (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int,int,int) ;
 int rvu_write64 (struct rvu*,int,int,int) ;

__attribute__((used)) static void rvu_detach_block(struct rvu *rvu, int pcifunc, int blktype)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 int slot, lf, num_lfs;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, blktype, pcifunc);
 if (blkaddr < 0)
  return;

 block = &hw->block[blkaddr];

 num_lfs = rvu_get_rsrc_mapcount(pfvf, block->type);
 if (!num_lfs)
  return;

 for (slot = 0; slot < num_lfs; slot++) {
  lf = rvu_lookup_rsrc(rvu, block, pcifunc, slot);
  if (lf < 0)
   continue;


  rvu_write64(rvu, blkaddr, block->lfcfg_reg |
       (lf << block->lfshift), 0x00ULL);


  rvu_update_rsrc_map(rvu, pfvf, block,
        pcifunc, lf, 0);


  rvu_free_rsrc(&block->lf, lf);


  rvu_clear_msix_offset(rvu, pfvf, block, lf);
 }
}
