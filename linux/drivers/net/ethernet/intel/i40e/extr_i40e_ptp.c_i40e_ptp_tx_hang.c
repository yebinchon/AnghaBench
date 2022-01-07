
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i40e_pf {int flags; int tx_hwtstamp_timeouts; int state; struct sk_buff* ptp_tx_skb; scalar_t__ ptp_tx_start; int ptp_tx; } ;


 scalar_t__ HZ ;
 int I40E_FLAG_PTP ;
 int __I40E_PTP_TX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int test_bit (int ,int ) ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

void i40e_ptp_tx_hang(struct i40e_pf *pf)
{
 struct sk_buff *skb;

 if (!(pf->flags & I40E_FLAG_PTP) || !pf->ptp_tx)
  return;


 if (!test_bit(__I40E_PTP_TX_IN_PROGRESS, pf->state))
  return;





 if (time_is_before_jiffies(pf->ptp_tx_start + HZ)) {
  skb = pf->ptp_tx_skb;
  pf->ptp_tx_skb = ((void*)0);
  clear_bit_unlock(__I40E_PTP_TX_IN_PROGRESS, pf->state);


  dev_kfree_skb_any(skb);
  pf->tx_hwtstamp_timeouts++;
 }
}
