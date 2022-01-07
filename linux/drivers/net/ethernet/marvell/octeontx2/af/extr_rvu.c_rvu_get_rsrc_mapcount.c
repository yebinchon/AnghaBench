
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu_pfvf {int sso; int ssow; int timlfs; int cptlfs; int nixlf; int npalf; } ;
__attribute__((used)) static u16 rvu_get_rsrc_mapcount(struct rvu_pfvf *pfvf, int blktype)
{
 switch (blktype) {
 case 131:
  return pfvf->npalf ? 1 : 0;
 case 132:
  return pfvf->nixlf ? 1 : 0;
 case 130:
  return pfvf->sso;
 case 129:
  return pfvf->ssow;
 case 128:
  return pfvf->timlfs;
 case 133:
  return pfvf->cptlfs;
 }
 return 0;
}
