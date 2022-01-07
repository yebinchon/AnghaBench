
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct rvu_pfvf {int * msix_lfmap; int msix; } ;
struct rvu_block {int msixcfg_reg; int lfshift; int addr; } ;
struct rvu {int dummy; } ;


 int MSIX_BLKLF (int ,int) ;
 int rvu_alloc_rsrc_contig (int *,int) ;
 int rvu_read64 (struct rvu*,int ,int) ;
 int rvu_rsrc_check_contig (int *,int) ;
 int rvu_write64 (struct rvu*,int ,int,int) ;

__attribute__((used)) static void rvu_set_msix_offset(struct rvu *rvu, struct rvu_pfvf *pfvf,
    struct rvu_block *block, int lf)
{
 u16 nvecs, vec, offset;
 u64 cfg;

 cfg = rvu_read64(rvu, block->addr, block->msixcfg_reg |
    (lf << block->lfshift));
 nvecs = (cfg >> 12) & 0xFF;


 if (!rvu_rsrc_check_contig(&pfvf->msix, nvecs))
  return;

 offset = rvu_alloc_rsrc_contig(&pfvf->msix, nvecs);


 rvu_write64(rvu, block->addr, block->msixcfg_reg |
      (lf << block->lfshift), (cfg & ~0x7FFULL) | offset);


 for (vec = 0; vec < nvecs; vec++)
  pfvf->msix_lfmap[offset + vec] = MSIX_BLKLF(block->addr, lf);
}
