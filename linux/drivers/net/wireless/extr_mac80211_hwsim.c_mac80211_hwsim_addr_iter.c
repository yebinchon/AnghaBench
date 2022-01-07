
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac80211_hwsim_addr_match_data {int ret; int addr; } ;
struct ieee80211_vif {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ memcmp (int *,int ,int ) ;

__attribute__((used)) static void mac80211_hwsim_addr_iter(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_addr_match_data *md = data;

 if (memcmp(mac, md->addr, ETH_ALEN) == 0)
  md->ret = 1;
}
