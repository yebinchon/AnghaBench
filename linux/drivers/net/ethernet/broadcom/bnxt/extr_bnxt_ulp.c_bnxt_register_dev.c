
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt_ulp_ops {int dummy; } ;
struct bnxt_ulp {int ulp_ops; void* handle; int ref_count; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; struct net_device* net; } ;
struct bnxt {unsigned int cp_nr_rings; int state; int dev; } ;


 int ASSERT_RTNL () ;
 int BNXT_MAX_ULP ;
 unsigned int BNXT_MIN_ROCE_STAT_CTXS ;
 int BNXT_ROCE_ULP ;
 int BNXT_STATE_OPEN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int atomic_set (int *,int ) ;
 unsigned int bnxt_get_max_func_stat_ctxs (struct bnxt*) ;
 int bnxt_hwrm_vnic_cfg (struct bnxt*,int ) ;
 int netdev_err (int ,char*,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct bnxt_ulp_ops*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnxt_register_dev(struct bnxt_en_dev *edev, int ulp_id,
        struct bnxt_ulp_ops *ulp_ops, void *handle)
{
 struct net_device *dev = edev->net;
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_ulp *ulp;

 ASSERT_RTNL();
 if (ulp_id >= BNXT_MAX_ULP)
  return -EINVAL;

 ulp = &edev->ulp_tbl[ulp_id];
 if (rcu_access_pointer(ulp->ulp_ops)) {
  netdev_err(bp->dev, "ulp id %d already registered\n", ulp_id);
  return -EBUSY;
 }
 if (ulp_id == BNXT_ROCE_ULP) {
  unsigned int max_stat_ctxs;

  max_stat_ctxs = bnxt_get_max_func_stat_ctxs(bp);
  if (max_stat_ctxs <= BNXT_MIN_ROCE_STAT_CTXS ||
      bp->cp_nr_rings == max_stat_ctxs)
   return -ENOMEM;
 }

 atomic_set(&ulp->ref_count, 0);
 ulp->handle = handle;
 rcu_assign_pointer(ulp->ulp_ops, ulp_ops);

 if (ulp_id == BNXT_ROCE_ULP) {
  if (test_bit(BNXT_STATE_OPEN, &bp->state))
   bnxt_hwrm_vnic_cfg(bp, 0);
 }

 return 0;
}
