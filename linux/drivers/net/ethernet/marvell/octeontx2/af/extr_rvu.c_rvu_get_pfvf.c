
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_pfvf {int dummy; } ;
struct rvu {struct rvu_pfvf* pf; struct rvu_pfvf* hwvf; } ;


 int RVU_PFVF_FUNC_MASK ;
 size_t rvu_get_hwvf (struct rvu*,int) ;
 size_t rvu_get_pf (int) ;

struct rvu_pfvf *rvu_get_pfvf(struct rvu *rvu, int pcifunc)
{

 if (pcifunc & RVU_PFVF_FUNC_MASK)
  return &rvu->hwvf[rvu_get_hwvf(rvu, pcifunc)];
 else
  return &rvu->pf[rvu_get_pf(pcifunc)];
}
