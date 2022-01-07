
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;


 int BLKADDR_RVUM ;
 int RVU_PRIV_PFX_CFG (int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

void rvu_get_pf_numvfs(struct rvu *rvu, int pf, int *numvfs, int *hwvf)
{
 u64 cfg;


 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_CFG(pf));
 *numvfs = (cfg >> 12) & 0xFF;
 *hwvf = cfg & 0xFFF;
}
