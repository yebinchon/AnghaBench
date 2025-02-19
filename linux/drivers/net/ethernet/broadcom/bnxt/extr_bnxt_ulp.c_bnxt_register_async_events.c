
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct bnxt_ulp {unsigned long* async_events_bmap; scalar_t__ max_async_event_id; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; struct net_device* net; } ;
struct bnxt {int dummy; } ;


 int BNXT_MAX_ULP ;
 int EINVAL ;
 int bnxt_hwrm_func_rgtr_async_events (struct bnxt*,unsigned long*,scalar_t__) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int smp_wmb () ;

__attribute__((used)) static int bnxt_register_async_events(struct bnxt_en_dev *edev, int ulp_id,
          unsigned long *events_bmap, u16 max_id)
{
 struct net_device *dev = edev->net;
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_ulp *ulp;

 if (ulp_id >= BNXT_MAX_ULP)
  return -EINVAL;

 ulp = &edev->ulp_tbl[ulp_id];
 ulp->async_events_bmap = events_bmap;

 smp_wmb();
 ulp->max_async_event_id = max_id;
 bnxt_hwrm_func_rgtr_async_events(bp, events_bmap, max_id + 1);
 return 0;
}
