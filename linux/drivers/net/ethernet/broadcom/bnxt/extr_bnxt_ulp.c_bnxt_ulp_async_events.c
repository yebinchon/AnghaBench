
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hwrm_async_event_cmpl {int event_id; } ;
struct bnxt_ulp_ops {int (* ulp_async_notifier ) (int ,struct hwrm_async_event_cmpl*) ;} ;
struct bnxt_ulp {scalar_t__ max_async_event_id; int handle; int async_events_bmap; int ulp_ops; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; } ;
struct bnxt {struct bnxt_en_dev* edev; } ;


 int BNXT_MAX_ULP ;
 scalar_t__ le16_to_cpu (int ) ;
 struct bnxt_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 int stub1 (int ,struct hwrm_async_event_cmpl*) ;
 scalar_t__ test_bit (scalar_t__,int ) ;

void bnxt_ulp_async_events(struct bnxt *bp, struct hwrm_async_event_cmpl *cmpl)
{
 u16 event_id = le16_to_cpu(cmpl->event_id);
 struct bnxt_en_dev *edev = bp->edev;
 struct bnxt_ulp_ops *ops;
 int i;

 if (!edev)
  return;

 rcu_read_lock();
 for (i = 0; i < BNXT_MAX_ULP; i++) {
  struct bnxt_ulp *ulp = &edev->ulp_tbl[i];

  ops = rcu_dereference(ulp->ulp_ops);
  if (!ops || !ops->ulp_async_notifier)
   continue;
  if (!ulp->async_events_bmap ||
      event_id > ulp->max_async_event_id)
   continue;


  smp_rmb();
  if (test_bit(event_id, ulp->async_events_bmap))
   ops->ulp_async_notifier(ulp->handle, cmpl);
 }
 rcu_read_unlock();
}
