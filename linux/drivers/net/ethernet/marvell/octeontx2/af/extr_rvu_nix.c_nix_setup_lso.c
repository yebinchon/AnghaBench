
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int total; int in_use; } ;
struct nix_hw {TYPE_1__ lso; } ;


 int BIT_ULL (int) ;
 int NIX_AF_CONST1 ;
 int NIX_AF_LSO_CFG ;
 int NIX_AF_LSO_FORMATX_FIELDX (int,int) ;
 int NIX_LSO_FORMAT_IDX_TSOV4 ;
 int NIX_LSO_FORMAT_IDX_TSOV6 ;
 int nix_setup_lso_tso_l3 (struct rvu*,int,int,int,int*) ;
 int nix_setup_lso_tso_l4 (struct rvu*,int,int,int*) ;
 int rvu_read64 (struct rvu*,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static void nix_setup_lso(struct rvu *rvu, struct nix_hw *nix_hw, int blkaddr)
{
 u64 cfg, idx, fidx = 0;


 cfg = (rvu_read64(rvu, blkaddr, NIX_AF_CONST1) >> 48) & 0xFF;
 nix_hw->lso.total = cfg;


 cfg = rvu_read64(rvu, blkaddr, NIX_AF_LSO_CFG);



 cfg &= ~((0xFFFFULL << 32) | (0xFFFFULL << 16));
 cfg |= (0xFFF2ULL << 32) | (0xFFF2ULL << 16);
 rvu_write64(rvu, blkaddr, NIX_AF_LSO_CFG, cfg | BIT_ULL(63));





 idx = NIX_LSO_FORMAT_IDX_TSOV4;
 nix_setup_lso_tso_l3(rvu, blkaddr, idx, 1, &fidx);
 nix_setup_lso_tso_l4(rvu, blkaddr, idx, &fidx);


 for (; fidx < 8; fidx++) {
  rvu_write64(rvu, blkaddr,
       NIX_AF_LSO_FORMATX_FIELDX(idx, fidx), 0x0ULL);
 }
 nix_hw->lso.in_use++;


 idx = NIX_LSO_FORMAT_IDX_TSOV6;
 fidx = 0;
 nix_setup_lso_tso_l3(rvu, blkaddr, idx, 0, &fidx);
 nix_setup_lso_tso_l4(rvu, blkaddr, idx, &fidx);


 for (; fidx < 8; fidx++) {
  rvu_write64(rvu, blkaddr,
       NIX_AF_LSO_FORMATX_FIELDX(idx, fidx), 0x0ULL);
 }
 nix_hw->lso.in_use++;
}
