
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mac80211_hwsim_data {int hw; } ;


 int ieee80211_radar_detected (int ) ;

__attribute__((used)) static int hwsim_write_simulate_radar(void *dat, u64 val)
{
 struct mac80211_hwsim_data *data = dat;

 ieee80211_radar_detected(data->hw);

 return 0;
}
