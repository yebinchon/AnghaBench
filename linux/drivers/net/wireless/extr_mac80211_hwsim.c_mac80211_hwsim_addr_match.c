
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac80211_hwsim_data {int hw; int scan_addr; scalar_t__ scanning; } ;
struct mac80211_hwsim_addr_match_data {int ret; int addr; } ;


 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct mac80211_hwsim_addr_match_data*) ;
 int mac80211_hwsim_addr_iter ;
 scalar_t__ memcmp (int const*,int ,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static bool mac80211_hwsim_addr_match(struct mac80211_hwsim_data *data,
          const u8 *addr)
{
 struct mac80211_hwsim_addr_match_data md = {
  .ret = 0,
 };

 if (data->scanning && memcmp(addr, data->scan_addr, ETH_ALEN) == 0)
  return 1;

 memcpy(md.addr, addr, ETH_ALEN);

 ieee80211_iterate_active_interfaces_atomic(data->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         mac80211_hwsim_addr_iter,
         &md);

 return md.ret;
}
