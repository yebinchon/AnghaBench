
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu_pfvf {int dummy; } ;
struct TYPE_2__ {int max; int bmap; } ;
struct rvu_block {int lfcfg_reg; int lfshift; TYPE_1__ lf; int addr; } ;
struct rvu {int dummy; } ;


 int BIT_ULL (int) ;
 int __set_bit (int,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int) ;
 int rvu_read64 (struct rvu*,int ,int) ;
 int rvu_set_msix_offset (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int) ;
 int rvu_update_rsrc_map (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int,int,int) ;

__attribute__((used)) static void rvu_scan_block(struct rvu *rvu, struct rvu_block *block)
{
 struct rvu_pfvf *pfvf;
 u64 cfg;
 int lf;

 for (lf = 0; lf < block->lf.max; lf++) {
  cfg = rvu_read64(rvu, block->addr,
     block->lfcfg_reg | (lf << block->lfshift));
  if (!(cfg & BIT_ULL(63)))
   continue;


  __set_bit(lf, block->lf.bmap);


  pfvf = rvu_get_pfvf(rvu, (cfg >> 8) & 0xFFFF);
  rvu_update_rsrc_map(rvu, pfvf, block,
        (cfg >> 8) & 0xFFFF, lf, 1);


  rvu_set_msix_offset(rvu, pfvf, block, lf);
 }
}
