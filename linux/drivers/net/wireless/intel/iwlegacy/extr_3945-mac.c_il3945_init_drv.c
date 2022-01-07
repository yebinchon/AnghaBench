
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_duration; } ;
struct il_priv {int retry_rate; int * ieee_rates; TYPE_1__ force_reset; int missed_beacon_threshold; int iw_mode; int band; int * ieee_channels; int mutex; int free_frames; int hcmd_lock; int sta_lock; int * beacon_skb; scalar_t__ eeprom; } ;
struct il3945_eeprom {scalar_t__ version; } ;


 scalar_t__ EEPROM_3945_EEPROM_VERSION ;
 int EINVAL ;
 int EIO ;
 int IL_DELAY_NEXT_FORCE_FW_RELOAD ;
 int IL_ERR (char*,int) ;
 int IL_MISSED_BEACON_THRESHOLD_DEF ;
 int IL_WARN (char*,scalar_t__) ;
 int INIT_LIST_HEAD (int *) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_IFTYPE_STATION ;
 int il3945_init_hw_rates (struct il_priv*,int *) ;
 scalar_t__ il3945_txpower_set_from_eeprom (struct il_priv*) ;
 int il_free_channel_map (struct il_priv*) ;
 int il_init_channel_map (struct il_priv*) ;
 int il_init_geos (struct il_priv*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
il3945_init_drv(struct il_priv *il)
{
 int ret;
 struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;

 il->retry_rate = 1;
 il->beacon_skb = ((void*)0);

 spin_lock_init(&il->sta_lock);
 spin_lock_init(&il->hcmd_lock);

 INIT_LIST_HEAD(&il->free_frames);

 mutex_init(&il->mutex);

 il->ieee_channels = ((void*)0);
 il->ieee_rates = ((void*)0);
 il->band = NL80211_BAND_2GHZ;

 il->iw_mode = NL80211_IFTYPE_STATION;
 il->missed_beacon_threshold = IL_MISSED_BEACON_THRESHOLD_DEF;


 il->force_reset.reset_duration = IL_DELAY_NEXT_FORCE_FW_RELOAD;

 if (eeprom->version < EEPROM_3945_EEPROM_VERSION) {
  IL_WARN("Unsupported EEPROM version: 0x%04X\n",
   eeprom->version);
  ret = -EINVAL;
  goto err;
 }
 ret = il_init_channel_map(il);
 if (ret) {
  IL_ERR("initializing regulatory failed: %d\n", ret);
  goto err;
 }


 if (il3945_txpower_set_from_eeprom(il)) {
  ret = -EIO;
  goto err_free_channel_map;
 }

 ret = il_init_geos(il);
 if (ret) {
  IL_ERR("initializing geos failed: %d\n", ret);
  goto err_free_channel_map;
 }
 il3945_init_hw_rates(il, il->ieee_rates);

 return 0;

err_free_channel_map:
 il_free_channel_map(il);
err:
 return ret;
}
