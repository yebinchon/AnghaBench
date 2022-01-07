
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_cp_rings; } ;
struct bnxt {int flags; TYPE_1__ hw_resc; } ;


 int BNXT_FLAG_CHIP_P5 ;
 scalar_t__ bnxt_get_ulp_msix_num (struct bnxt*) ;

__attribute__((used)) static unsigned int bnxt_get_max_func_cp_rings_for_en(struct bnxt *bp)
{
 unsigned int cp = bp->hw_resc.max_cp_rings;

 if (!(bp->flags & BNXT_FLAG_CHIP_P5))
  cp -= bnxt_get_ulp_msix_num(bp);

 return cp;
}
