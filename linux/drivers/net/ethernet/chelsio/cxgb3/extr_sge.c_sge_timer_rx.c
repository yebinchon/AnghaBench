
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_11__ {int cntxt_id; int restarted; scalar_t__ credits; int starved; int lock; } ;
struct sge_qset {int rx_reclaim_timer; TYPE_6__* fl; TYPE_5__ rspq; int napi; int netdev; } ;
struct port_info {struct adapter* adapter; } ;
struct TYPE_10__ {int rev; } ;
struct TYPE_9__ {TYPE_2__* qs; } ;
struct adapter {TYPE_4__ params; TYPE_3__ sge; } ;
typedef int spinlock_t ;
struct TYPE_12__ {scalar_t__ credits; scalar_t__ size; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_8__ {TYPE_1__ rspq; } ;


 int A_SG_RSPQ_FL_STATUS ;
 scalar_t__ RX_RECLAIM_PERIOD ;
 int __refill_fl (struct adapter*,TYPE_6__*) ;
 struct sge_qset* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ napi_is_scheduled (int *) ;
 struct port_info* netdev_priv (int ) ;
 struct sge_qset* qs ;
 int refill_rspq (struct adapter*,TYPE_5__*,int) ;
 int rx_reclaim_timer ;
 int spin_trylock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void sge_timer_rx(struct timer_list *t)
{
 spinlock_t *lock;
 struct sge_qset *qs = from_timer(qs, t, rx_reclaim_timer);
 struct port_info *pi = netdev_priv(qs->netdev);
 struct adapter *adap = pi->adapter;
 u32 status;

 lock = adap->params.rev > 0 ?
        &qs->rspq.lock : &adap->sge.qs[0].rspq.lock;

 if (!spin_trylock_irq(lock))
  goto out;

 if (napi_is_scheduled(&qs->napi))
  goto unlock;

 if (adap->params.rev < 4) {
  status = t3_read_reg(adap, A_SG_RSPQ_FL_STATUS);

  if (status & (1 << qs->rspq.cntxt_id)) {
   qs->rspq.starved++;
   if (qs->rspq.credits) {
    qs->rspq.credits--;
    refill_rspq(adap, &qs->rspq, 1);
    qs->rspq.restarted++;
    t3_write_reg(adap, A_SG_RSPQ_FL_STATUS,
          1 << qs->rspq.cntxt_id);
   }
  }
 }

 if (qs->fl[0].credits < qs->fl[0].size)
  __refill_fl(adap, &qs->fl[0]);
 if (qs->fl[1].credits < qs->fl[1].size)
  __refill_fl(adap, &qs->fl[1]);

unlock:
 spin_unlock_irq(lock);
out:
 mod_timer(&qs->rx_reclaim_timer, jiffies + RX_RECLAIM_PERIOD);
}
