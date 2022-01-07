
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ulp_ops {int (* ulp_sriov_config ) (int ,int) ;} ;
struct bnxt_ulp {int handle; int ulp_ops; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;


 int BNXT_MAX_ULP ;
 int bnxt_ulp_get (struct bnxt_ulp*) ;
 int bnxt_ulp_put (struct bnxt_ulp*) ;
 struct bnxt_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,int) ;

void bnxt_ulp_sriov_cfg(struct bnxt *bp, int num_vfs)
{
 struct bnxt_en_dev *edev = bp->edev;
 struct bnxt_ulp_ops *ops;
 int i;

 if (!edev)
  return;

 for (i = 0; i < BNXT_MAX_ULP; i++) {
  struct bnxt_ulp *ulp = &edev->ulp_tbl[i];

  rcu_read_lock();
  ops = rcu_dereference(ulp->ulp_ops);
  if (!ops || !ops->ulp_sriov_config) {
   rcu_read_unlock();
   continue;
  }
  bnxt_ulp_get(ulp);
  rcu_read_unlock();
  ops->ulp_sriov_config(ulp->handle, num_vfs);
  bnxt_ulp_put(ulp);
 }
}
