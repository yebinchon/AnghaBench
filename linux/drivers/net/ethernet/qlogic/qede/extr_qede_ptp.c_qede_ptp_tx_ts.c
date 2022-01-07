
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct qede_ptp {int tx_skb; int work; int ptp_tx_start; } ;
struct qede_dev {int ptp_skip_txts; int flags; struct qede_ptp* ptp; } ;
struct TYPE_2__ {int tx_flags; } ;


 int DP_ERR (struct qede_dev*,char*) ;
 int QEDE_FLAGS_PTP_TX_IN_PRORGESS ;
 int QEDE_FLAGS_TX_TIMESTAMPING_EN ;
 int SKBTX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int *) ;
 int jiffies ;
 int schedule_work (int *) ;
 int skb_get (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void qede_ptp_tx_ts(struct qede_dev *edev, struct sk_buff *skb)
{
 struct qede_ptp *ptp;

 ptp = edev->ptp;
 if (!ptp)
  return;

 if (test_and_set_bit_lock(QEDE_FLAGS_PTP_TX_IN_PRORGESS,
      &edev->flags)) {
  DP_ERR(edev, "Timestamping in progress\n");
  edev->ptp_skip_txts++;
  return;
 }

 if (unlikely(!test_bit(QEDE_FLAGS_TX_TIMESTAMPING_EN, &edev->flags))) {
  DP_ERR(edev,
         "Tx timestamping was not enabled, this packet will not be timestamped\n");
  clear_bit_unlock(QEDE_FLAGS_PTP_TX_IN_PRORGESS, &edev->flags);
  edev->ptp_skip_txts++;
 } else if (unlikely(ptp->tx_skb)) {
  DP_ERR(edev,
         "The device supports only a single outstanding packet to timestamp, this packet will not be timestamped\n");
  clear_bit_unlock(QEDE_FLAGS_PTP_TX_IN_PRORGESS, &edev->flags);
  edev->ptp_skip_txts++;
 } else {
  skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;

  ptp->tx_skb = skb_get(skb);
  ptp->ptp_tx_start = jiffies;
  schedule_work(&ptp->work);
 }
}
