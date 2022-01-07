
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct iwl_priv {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IWL_ACTIVE_DWELL_FACTOR_24GHZ ;
 int IWL_ACTIVE_DWELL_FACTOR_52GHZ ;
 scalar_t__ IWL_ACTIVE_DWELL_TIME_24 ;
 scalar_t__ IWL_ACTIVE_DWELL_TIME_52 ;
 int NL80211_BAND_5GHZ ;

__attribute__((used)) static u16 iwl_get_active_dwell_time(struct iwl_priv *priv,
         enum nl80211_band band, u8 n_probes)
{
 if (band == NL80211_BAND_5GHZ)
  return IWL_ACTIVE_DWELL_TIME_52 +
   IWL_ACTIVE_DWELL_FACTOR_52GHZ * (n_probes + 1);
 else
  return IWL_ACTIVE_DWELL_TIME_24 +
   IWL_ACTIVE_DWELL_FACTOR_24GHZ * (n_probes + 1);
}
