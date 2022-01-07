
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int edev; } ;


 int BNXT_MIN_ROCE_STAT_CTXS ;
 int BNXT_ROCE_ULP ;
 scalar_t__ bnxt_ulp_registered (int ,int ) ;

int bnxt_get_ulp_stat_ctxs(struct bnxt *bp)
{
 if (bnxt_ulp_registered(bp->edev, BNXT_ROCE_ULP))
  return BNXT_MIN_ROCE_STAT_CTXS;

 return 0;
}
