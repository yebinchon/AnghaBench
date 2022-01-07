
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int ptp_tx; int ptp_rx; int hw_features; int ptp_rx_lock; scalar_t__ latch_event_flags; struct i40e_hw hw; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;


 int EINVAL ;
 int ERANGE ;
 int I40E_HW_PTP_L4_CAPABLE ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_TIMESYNC_MASK ;
 int I40E_PRTTSYN_CTL0 ;
 int I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK ;
 int I40E_PRTTSYN_CTL1 ;
 int I40E_PRTTSYN_CTL1_TSYNENA_MASK ;
 int I40E_PRTTSYN_CTL1_TSYNTYPE_V1 ;
 int I40E_PRTTSYN_CTL1_TSYNTYPE_V2 ;
 int I40E_PRTTSYN_CTL1_UDP_ENA_MASK ;
 int I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK ;
 int I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK ;
 int I40E_PRTTSYN_RXTIME_H (int) ;
 int I40E_PRTTSYN_STAT_0 ;
 int I40E_PRTTSYN_TXTIME_H ;
 int rd32 (struct i40e_hw*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
           struct hwtstamp_config *config)
{
 struct i40e_hw *hw = &pf->hw;
 u32 tsyntype, regval;


 if (config->flags)
  return -EINVAL;

 switch (config->tx_type) {
 case 129:
  pf->ptp_tx = 0;
  break;
 case 128:
  pf->ptp_tx = 1;
  break;
 default:
  return -ERANGE;
 }

 switch (config->rx_filter) {
 case 143:
  pf->ptp_rx = 0;





  tsyntype = I40E_PRTTSYN_CTL1_TSYNTYPE_V1;
  break;
 case 139:
 case 141:
 case 140:
  if (!(pf->hw_features & I40E_HW_PTP_L4_CAPABLE))
   return -ERANGE;
  pf->ptp_rx = 1;
  tsyntype = I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK |
      I40E_PRTTSYN_CTL1_TSYNTYPE_V1 |
      I40E_PRTTSYN_CTL1_UDP_ENA_MASK;
  config->rx_filter = 140;
  break;
 case 137:
 case 132:
 case 130:
 case 131:
 case 138:
 case 133:
  if (!(pf->hw_features & I40E_HW_PTP_L4_CAPABLE))
   return -ERANGE;

 case 135:
 case 134:
 case 136:
  pf->ptp_rx = 1;
  tsyntype = I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK |
      I40E_PRTTSYN_CTL1_TSYNTYPE_V2;
  if (pf->hw_features & I40E_HW_PTP_L4_CAPABLE) {
   tsyntype |= I40E_PRTTSYN_CTL1_UDP_ENA_MASK;
   config->rx_filter = 137;
  } else {
   config->rx_filter = 135;
  }
  break;
 case 142:
 case 144:
 default:
  return -ERANGE;
 }


 spin_lock_bh(&pf->ptp_rx_lock);
 rd32(hw, I40E_PRTTSYN_STAT_0);
 rd32(hw, I40E_PRTTSYN_TXTIME_H);
 rd32(hw, I40E_PRTTSYN_RXTIME_H(0));
 rd32(hw, I40E_PRTTSYN_RXTIME_H(1));
 rd32(hw, I40E_PRTTSYN_RXTIME_H(2));
 rd32(hw, I40E_PRTTSYN_RXTIME_H(3));
 pf->latch_event_flags = 0;
 spin_unlock_bh(&pf->ptp_rx_lock);


 regval = rd32(hw, I40E_PRTTSYN_CTL0);
 if (pf->ptp_tx)
  regval |= I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK;
 else
  regval &= ~I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK;
 wr32(hw, I40E_PRTTSYN_CTL0, regval);

 regval = rd32(hw, I40E_PFINT_ICR0_ENA);
 if (pf->ptp_tx)
  regval |= I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
 else
  regval &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
 wr32(hw, I40E_PFINT_ICR0_ENA, regval);







 regval = rd32(hw, I40E_PRTTSYN_CTL1);

 regval &= I40E_PRTTSYN_CTL1_TSYNENA_MASK;

 regval |= tsyntype;
 wr32(hw, I40E_PRTTSYN_CTL1, regval);

 return 0;
}
