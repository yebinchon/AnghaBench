
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ulp_ops {int (* ulp_start ) (int ) ;} ;
struct bnxt_ulp {int handle; int ulp_ops; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;


 int BNXT_MAX_ULP ;
 struct bnxt_ulp_ops* rtnl_dereference (int ) ;
 int stub1 (int ) ;

void bnxt_ulp_start(struct bnxt *bp)
{
 struct bnxt_en_dev *edev = bp->edev;
 struct bnxt_ulp_ops *ops;
 int i;

 if (!edev)
  return;

 for (i = 0; i < BNXT_MAX_ULP; i++) {
  struct bnxt_ulp *ulp = &edev->ulp_tbl[i];

  ops = rtnl_dereference(ulp->ulp_ops);
  if (!ops || !ops->ulp_start)
   continue;
  ops->ulp_start(ulp->handle);
 }
}
