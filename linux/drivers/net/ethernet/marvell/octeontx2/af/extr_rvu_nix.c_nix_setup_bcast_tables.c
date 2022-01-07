
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct rvu_pfvf {scalar_t__ bcast_mce_idx; int bcast_mce_list; } ;
struct rvu {int cgx_mapped_pfs; struct rvu_pfvf* pf; } ;
struct nix_mcast {int dummy; } ;
struct nix_hw {struct nix_mcast mcast; } ;


 int BLKADDR_RVUM ;
 int NIX_AQ_INSTOP_INIT ;
 int RVU_PFVF_PF_SHIFT ;
 int RVU_PRIV_PFX_CFG (int) ;
 scalar_t__ nix_alloc_mce_list (struct nix_mcast*,int) ;
 int nix_mce_list_init (int *,int) ;
 int nix_setup_mce (struct rvu*,scalar_t__,int ,int,int ,int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static int nix_setup_bcast_tables(struct rvu *rvu, struct nix_hw *nix_hw)
{
 struct nix_mcast *mcast = &nix_hw->mcast;
 int err, pf, numvfs, idx;
 struct rvu_pfvf *pfvf;
 u16 pcifunc;
 u64 cfg;


 for (pf = 1; pf < (rvu->cgx_mapped_pfs + 1); pf++) {
  cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_CFG(pf));

  if (!((cfg >> 20) & 0x01))
   continue;

  numvfs = (cfg >> 12) & 0xFF;

  pfvf = &rvu->pf[pf];

  pfvf->bcast_mce_idx = nix_alloc_mce_list(mcast, numvfs + 1);

  nix_mce_list_init(&pfvf->bcast_mce_list, numvfs + 1);

  for (idx = 0; idx < (numvfs + 1); idx++) {

   pcifunc = (pf << RVU_PFVF_PF_SHIFT);
   pcifunc |= idx;





   err = nix_setup_mce(rvu, pfvf->bcast_mce_idx + idx,
         NIX_AQ_INSTOP_INIT,
         pcifunc, 0, 1);
   if (err)
    return err;
  }
 }
 return 0;
}
