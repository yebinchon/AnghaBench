
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ieee80211_sn_less (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool iwl_mvm_is_sn_less(u16 sn1, u16 sn2, u16 buffer_size)
{
 return ieee80211_sn_less(sn1, sn2) &&
        !ieee80211_sn_less(sn1, sn2 - buffer_size);
}
