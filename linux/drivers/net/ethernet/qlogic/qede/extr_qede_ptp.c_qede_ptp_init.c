
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mult; scalar_t__ shift; int mask; int read; } ;
struct qede_ptp {TYPE_2__ cc; int tc; int work; TYPE_1__* ops; int lock; } ;
struct qede_dev {int cdev; struct qede_ptp* ptp; } ;
struct TYPE_4__ {int (* enable ) (int ) ;} ;


 int CYCLECOUNTER_MASK (int) ;
 int DP_INFO (struct qede_dev*,char*) ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int qede_ptp_read_cc ;
 int qede_ptp_task ;
 int spin_lock_init (int *) ;
 int stub1 (int ) ;
 int timecounter_init (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int qede_ptp_init(struct qede_dev *edev, bool init_tc)
{
 struct qede_ptp *ptp;
 int rc;

 ptp = edev->ptp;
 if (!ptp)
  return -EINVAL;

 spin_lock_init(&ptp->lock);


 rc = ptp->ops->enable(edev->cdev);
 if (rc) {
  DP_INFO(edev, "PTP HW enable failed\n");
  return rc;
 }


 INIT_WORK(&ptp->work, qede_ptp_task);





 if (init_tc) {
  memset(&ptp->cc, 0, sizeof(ptp->cc));
  ptp->cc.read = qede_ptp_read_cc;
  ptp->cc.mask = CYCLECOUNTER_MASK(64);
  ptp->cc.shift = 0;
  ptp->cc.mult = 1;

  timecounter_init(&ptp->tc, &ptp->cc,
     ktime_to_ns(ktime_get_real()));
 }

 return rc;
}
