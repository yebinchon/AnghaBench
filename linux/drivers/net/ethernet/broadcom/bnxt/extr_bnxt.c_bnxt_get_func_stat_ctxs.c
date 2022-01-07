
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int cp_nr_rings; } ;


 int bnxt_get_ulp_msix_base (struct bnxt*) ;
 scalar_t__ bnxt_get_ulp_msix_num (struct bnxt*) ;
 int bnxt_get_ulp_stat_ctxs (struct bnxt*) ;
 scalar_t__ bnxt_nq_rings_in_use (struct bnxt*) ;

__attribute__((used)) static int bnxt_get_func_stat_ctxs(struct bnxt *bp)
{
 int ulp_stat = bnxt_get_ulp_stat_ctxs(bp);
 int cp = bp->cp_nr_rings;

 if (!ulp_stat)
  return cp;

 if (bnxt_nq_rings_in_use(bp) > cp + bnxt_get_ulp_msix_num(bp))
  return bnxt_get_ulp_msix_base(bp) + ulp_stat;

 return cp + ulp_stat;
}
