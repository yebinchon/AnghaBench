
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int extension_chan_offset; int is_40mhz; int enabled; } ;
struct TYPE_3__ {int channel; } ;
struct il_priv {TYPE_2__ ht; TYPE_1__ staging; int band; scalar_t__ disable_ht40; } ;
struct ieee80211_sta_ht_cap {int ht_supported; } ;


 int il_is_channel_extension (struct il_priv*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;

bool
il_is_ht40_tx_allowed(struct il_priv *il, struct ieee80211_sta_ht_cap *ht_cap)
{
 if (!il->ht.enabled || !il->ht.is_40mhz)
  return 0;





 if (ht_cap && !ht_cap->ht_supported)
  return 0;






 return il_is_channel_extension(il, il->band,
           le16_to_cpu(il->staging.channel),
           il->ht.extension_chan_offset);
}
