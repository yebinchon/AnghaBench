
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac80211_hwsim_data {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int hwsim_send_nullfunc (struct mac80211_hwsim_data*,int *,struct ieee80211_vif*,int ) ;

__attribute__((used)) static void hwsim_send_nullfunc_no_ps(void *dat, u8 *mac,
          struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_data *data = dat;
 hwsim_send_nullfunc(data, mac, vif, 0);
}
