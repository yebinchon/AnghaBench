
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac80211_hwsim_data {int dummy; } ;


 int hwsim_radios_rht ;
 int hwsim_rht_params ;
 struct mac80211_hwsim_data* rhashtable_lookup_fast (int *,int const*,int ) ;

__attribute__((used)) static struct mac80211_hwsim_data *get_hwsim_data_ref_from_addr(const u8 *addr)
{
 return rhashtable_lookup_fast(&hwsim_radios_rht,
          addr,
          hwsim_rht_params);
}
