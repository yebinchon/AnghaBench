
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE80211_AC_VO ;
 int IWL_MAX_TID_COUNT ;
 int * tid_to_mac80211_ac ;

__attribute__((used)) static inline u8 iwl_mvm_tid_to_ac_queue(int tid)
{
 if (tid == IWL_MAX_TID_COUNT)
  return IEEE80211_AC_VO;

 return tid_to_mac80211_ac[tid];
}
