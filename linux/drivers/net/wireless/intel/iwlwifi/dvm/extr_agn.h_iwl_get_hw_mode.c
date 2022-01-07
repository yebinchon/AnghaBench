
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {TYPE_2__* hw; } ;
struct ieee80211_supported_band {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {struct ieee80211_supported_band const** bands; } ;



__attribute__((used)) static inline const struct ieee80211_supported_band *iwl_get_hw_mode(
   struct iwl_priv *priv, enum nl80211_band band)
{
 return priv->hw->wiphy->bands[band];
}
