
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dev; } ;


 int RVU_AF_INT_VEC_CNT ;
 int RVU_PF_INT_VEC_CNT ;
 int dev_warn (int ,char*,int,int,int) ;

__attribute__((used)) static void rvu_check_min_msix_vec(struct rvu *rvu, int nvecs, int pf, int vf)
{
 int min_vecs;

 if (!vf)
  goto check_pf;

 if (!nvecs) {
  dev_warn(rvu->dev,
    "PF%d:VF%d is configured with zero msix vectors, %d\n",
    pf, vf - 1, nvecs);
 }
 return;

check_pf:
 if (pf == 0)
  min_vecs = RVU_AF_INT_VEC_CNT + RVU_PF_INT_VEC_CNT;
 else
  min_vecs = RVU_PF_INT_VEC_CNT;

 if (!(nvecs < min_vecs))
  return;
 dev_warn(rvu->dev,
   "PF%d is configured with too few vectors, %d, min is %d\n",
   pf, nvecs, min_vecs);
}
