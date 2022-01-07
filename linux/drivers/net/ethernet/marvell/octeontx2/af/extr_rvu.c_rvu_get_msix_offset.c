
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {size_t max; } ;
struct rvu_pfvf {scalar_t__* msix_lfmap; TYPE_1__ msix; } ;
struct rvu {int dummy; } ;


 scalar_t__ MSIX_BLKLF (int,int) ;
 size_t MSIX_VECTOR_INVALID ;

__attribute__((used)) static u16 rvu_get_msix_offset(struct rvu *rvu, struct rvu_pfvf *pfvf,
          int blkaddr, int lf)
{
 u16 vec;

 if (lf < 0)
  return MSIX_VECTOR_INVALID;

 for (vec = 0; vec < pfvf->msix.max; vec++) {
  if (pfvf->msix_lfmap[vec] == MSIX_BLKLF(blkaddr, lf))
   return vec;
 }
 return MSIX_VECTOR_INVALID;
}
