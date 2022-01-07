
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_en_dev {TYPE_1__* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;
struct TYPE_2__ {int msix_requested; } ;


 size_t BNXT_ROCE_ULP ;
 scalar_t__ bnxt_ulp_registered (struct bnxt_en_dev*,size_t) ;

int bnxt_get_ulp_msix_num(struct bnxt *bp)
{
 if (bnxt_ulp_registered(bp->edev, BNXT_ROCE_ULP)) {
  struct bnxt_en_dev *edev = bp->edev;

  return edev->ulp_tbl[BNXT_ROCE_ULP].msix_requested;
 }
 return 0;
}
