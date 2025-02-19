
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_supported_band {scalar_t__ band; int n_iftype_data; struct ieee80211_sband_iftype_data* iftype_data; } ;
struct ieee80211_sband_iftype_data {int dummy; } ;


 int ARRAY_SIZE (scalar_t__) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ he_capa_2ghz ;
 scalar_t__ he_capa_5ghz ;

__attribute__((used)) static void mac80211_hwsim_he_capab(struct ieee80211_supported_band *sband)
{
 u16 n_iftype_data;

 if (sband->band == NL80211_BAND_2GHZ) {
  n_iftype_data = ARRAY_SIZE(he_capa_2ghz);
  sband->iftype_data =
   (struct ieee80211_sband_iftype_data *)he_capa_2ghz;
 } else if (sband->band == NL80211_BAND_5GHZ) {
  n_iftype_data = ARRAY_SIZE(he_capa_5ghz);
  sband->iftype_data =
   (struct ieee80211_sband_iftype_data *)he_capa_5ghz;
 } else {
  return;
 }

 sband->n_iftype_data = n_iftype_data;
}
