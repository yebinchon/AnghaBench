
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; } ;
struct rvu_pfvf {TYPE_1__ msix; } ;
struct rvu {struct rvu_pfvf* pf; } ;


 int BLKADDR_RVUM ;
 scalar_t__ RVU_AF_INT_VEC_CNT ;
 scalar_t__ RVU_PF_INT_VEC_CNT ;
 int RVU_PRIV_PFX_INT_CFG (int ) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static int rvu_afvf_msix_vectors_num_ok(struct rvu *rvu)
{
 struct rvu_pfvf *pfvf = &rvu->pf[0];
 int offset;

 pfvf = &rvu->pf[0];
 offset = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_INT_CFG(0)) & 0x3ff;





 return (pfvf->msix.max >= RVU_AF_INT_VEC_CNT + RVU_PF_INT_VEC_CNT) &&
        offset;
}
