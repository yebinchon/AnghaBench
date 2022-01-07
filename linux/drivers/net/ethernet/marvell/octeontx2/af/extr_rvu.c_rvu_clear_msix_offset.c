
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u16 ;
struct rvu_pfvf {int msix; scalar_t__* msix_lfmap; } ;
struct rvu_block {int msixcfg_reg; int lfshift; int addr; } ;
struct rvu {int dummy; } ;


 int rvu_free_rsrc_contig (int *,size_t,size_t) ;
 size_t rvu_get_msix_offset (struct rvu*,struct rvu_pfvf*,int ,int) ;
 int rvu_read64 (struct rvu*,int ,int) ;
 int rvu_write64 (struct rvu*,int ,int,int) ;

__attribute__((used)) static void rvu_clear_msix_offset(struct rvu *rvu, struct rvu_pfvf *pfvf,
      struct rvu_block *block, int lf)
{
 u16 nvecs, vec, offset;
 u64 cfg;

 cfg = rvu_read64(rvu, block->addr, block->msixcfg_reg |
    (lf << block->lfshift));
 nvecs = (cfg >> 12) & 0xFF;


 rvu_write64(rvu, block->addr, block->msixcfg_reg |
      (lf << block->lfshift), cfg & ~0x7FFULL);

 offset = rvu_get_msix_offset(rvu, pfvf, block->addr, lf);


 for (vec = 0; vec < nvecs; vec++)
  pfvf->msix_lfmap[offset + vec] = 0;


 rvu_free_rsrc_contig(&pfvf->msix, nvecs, offset);
}
