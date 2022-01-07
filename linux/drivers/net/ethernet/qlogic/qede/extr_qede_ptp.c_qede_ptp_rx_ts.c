
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct qede_ptp {int lock; int tc; TYPE_1__* ops; } ;
struct qede_dev {int cdev; struct qede_ptp* ptp; } ;
struct TYPE_4__ {int hwtstamp; } ;
struct TYPE_3__ {int (* read_rx_ts ) (int ,int *) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,int ) ;
 int QED_MSG_DEBUG ;
 int ns_to_ktime (int ) ;
 TYPE_2__* skb_hwtstamps (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int *) ;
 int timecounter_cyc2time (int *,int ) ;

void qede_ptp_rx_ts(struct qede_dev *edev, struct sk_buff *skb)
{
 struct qede_ptp *ptp;
 u64 timestamp, ns;
 int rc;

 ptp = edev->ptp;
 if (!ptp)
  return;

 spin_lock_bh(&ptp->lock);
 rc = ptp->ops->read_rx_ts(edev->cdev, &timestamp);
 if (rc) {
  spin_unlock_bh(&ptp->lock);
  DP_INFO(edev, "Invalid Rx timestamp\n");
  return;
 }

 ns = timecounter_cyc2time(&ptp->tc, timestamp);
 spin_unlock_bh(&ptp->lock);
 skb_hwtstamps(skb)->hwtstamp = ns_to_ktime(ns);
 DP_VERBOSE(edev, QED_MSG_DEBUG,
     "Rx timestamp, timestamp cycles = %llu, ns = %llu\n",
     timestamp, ns);
}
