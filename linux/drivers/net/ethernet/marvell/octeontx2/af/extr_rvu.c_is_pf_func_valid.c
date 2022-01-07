
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_2__ {int total_pfs; } ;


 int BLKADDR_RVUM ;
 int RVU_PFVF_FUNC_MASK ;
 int RVU_PRIV_PFX_CFG (int) ;
 int rvu_get_pf (int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static bool is_pf_func_valid(struct rvu *rvu, u16 pcifunc)
{
 int pf, vf, nvfs;
 u64 cfg;

 pf = rvu_get_pf(pcifunc);
 if (pf >= rvu->hw->total_pfs)
  return 0;

 if (!(pcifunc & RVU_PFVF_FUNC_MASK))
  return 1;


 vf = (pcifunc & RVU_PFVF_FUNC_MASK) - 1;
 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_CFG(pf));
 nvfs = (cfg >> 12) & 0xFF;
 if (vf >= nvfs)
  return 0;

 return 1;
}
