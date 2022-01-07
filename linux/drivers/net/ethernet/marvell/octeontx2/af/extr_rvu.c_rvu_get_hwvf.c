
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;


 int BLKADDR_RVUM ;
 int RVU_PFVF_FUNC_MASK ;
 int RVU_PRIV_PFX_CFG (int) ;
 int rvu_get_pf (int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static int rvu_get_hwvf(struct rvu *rvu, int pcifunc)
{
 int pf, func;
 u64 cfg;

 pf = rvu_get_pf(pcifunc);
 func = pcifunc & RVU_PFVF_FUNC_MASK;


 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_CFG(pf));

 return ((cfg & 0xFFF) + func - 1);
}
