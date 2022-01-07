
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; int state; struct sk_buff* ptp_tx_skb; int ptp_tx; struct i40e_hw hw; } ;


 int I40E_FLAG_PTP ;
 int I40E_PRTTSYN_TXTIME_H ;
 int I40E_PRTTSYN_TXTIME_L ;
 int __I40E_PTP_TX_IN_PROGRESS ;
 int clear_bit_unlock (int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int i40e_ptp_convert_to_hwtstamp (struct skb_shared_hwtstamps*,int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

void i40e_ptp_tx_hwtstamp(struct i40e_pf *pf)
{
 struct skb_shared_hwtstamps shhwtstamps;
 struct sk_buff *skb = pf->ptp_tx_skb;
 struct i40e_hw *hw = &pf->hw;
 u32 hi, lo;
 u64 ns;

 if (!(pf->flags & I40E_FLAG_PTP) || !pf->ptp_tx)
  return;


 if (!pf->ptp_tx_skb)
  return;

 lo = rd32(hw, I40E_PRTTSYN_TXTIME_L);
 hi = rd32(hw, I40E_PRTTSYN_TXTIME_H);

 ns = (((u64)hi) << 32) | lo;
 i40e_ptp_convert_to_hwtstamp(&shhwtstamps, ns);






 pf->ptp_tx_skb = ((void*)0);
 clear_bit_unlock(__I40E_PTP_TX_IN_PROGRESS, pf->state);


 skb_tstamp_tx(skb, &shhwtstamps);
 dev_kfree_skb_any(skb);
}
