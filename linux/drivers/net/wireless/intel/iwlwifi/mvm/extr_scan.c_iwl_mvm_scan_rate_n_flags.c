
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int scan_last_antenna_idx; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef int __le32 ;


 int BIT (int ) ;
 int IWL_RATE_1M_PLCP ;
 int IWL_RATE_6M_PLCP ;
 int NL80211_BAND_2GHZ ;
 int RATE_MCS_ANT_POS ;
 int RATE_MCS_CCK_MSK ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_toggle_tx_ant (struct iwl_mvm*,int *) ;

__attribute__((used)) static inline __le32
iwl_mvm_scan_rate_n_flags(struct iwl_mvm *mvm, enum nl80211_band band,
     bool no_cck)
{
 u32 tx_ant;

 iwl_mvm_toggle_tx_ant(mvm, &mvm->scan_last_antenna_idx);
 tx_ant = BIT(mvm->scan_last_antenna_idx) << RATE_MCS_ANT_POS;

 if (band == NL80211_BAND_2GHZ && !no_cck)
  return cpu_to_le32(IWL_RATE_1M_PLCP | RATE_MCS_CCK_MSK |
       tx_ant);
 else
  return cpu_to_le32(IWL_RATE_6M_PLCP | tx_ant);
}
