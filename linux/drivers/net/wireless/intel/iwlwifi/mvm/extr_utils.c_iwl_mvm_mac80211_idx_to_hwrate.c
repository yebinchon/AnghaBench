
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * fw_rate_idx_to_plcp ;

u8 iwl_mvm_mac80211_idx_to_hwrate(int rate_idx)
{

 return fw_rate_idx_to_plcp[rate_idx];
}
