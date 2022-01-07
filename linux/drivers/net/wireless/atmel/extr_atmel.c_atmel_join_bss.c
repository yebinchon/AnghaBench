
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bss_info {scalar_t__ BSStype; int channel; scalar_t__ preamble; scalar_t__ UsingWEP; int beacon_period; int SSIDsize; int SSID; int BSSID; } ;
struct atmel_private {scalar_t__ operating_mode; int listen_interval; int channel; scalar_t__ preamble; scalar_t__ station_is_associated; scalar_t__ wep_is_on; int beacon_period; scalar_t__ power_mode; scalar_t__ use_wpa; int SSID_size; int SSID; int CurrentBSSID; struct bss_info* BSSinfo; } ;


 scalar_t__ ACTIVE_MODE ;
 int BSS_TYPE_AD_HOC ;
 int BSS_TYPE_INFRASTRUCTURE ;
 int ETH_ALEN ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int LOCAL_MIB_PREAMBLE_TYPE ;
 int Local_Mib_Type ;
 int MAC_MGMT_MIB_LISTEN_INTERVAL_POS ;
 int MAC_MGMT_MIB_PS_MODE_POS ;
 int Mac_Mgmt_Mib_Type ;
 int STATION_STATE_JOINNING ;
 int STATION_STATE_MGMT_ERROR ;
 int atmel_enter_state (struct atmel_private*,int ) ;
 int atmel_set_mib16 (struct atmel_private*,int ,int ,int) ;
 int atmel_set_mib8 (struct atmel_private*,int ,int ,scalar_t__) ;
 int build_wpa_mib (struct atmel_private*) ;
 int join (struct atmel_private*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void atmel_join_bss(struct atmel_private *priv, int bss_index)
{
 struct bss_info *bss = &priv->BSSinfo[bss_index];

 memcpy(priv->CurrentBSSID, bss->BSSID, ETH_ALEN);
 memcpy(priv->SSID, bss->SSID, priv->SSID_size = bss->SSIDsize);


 if (priv->use_wpa)
  build_wpa_mib(priv);



 if (bss->BSStype == IW_MODE_ADHOC &&
     priv->operating_mode != IW_MODE_ADHOC &&
     priv->power_mode) {
  priv->power_mode = 0;
  priv->listen_interval = 1;
  atmel_set_mib8(priv, Mac_Mgmt_Mib_Type,
          MAC_MGMT_MIB_PS_MODE_POS, ACTIVE_MODE);
  atmel_set_mib16(priv, Mac_Mgmt_Mib_Type,
    MAC_MGMT_MIB_LISTEN_INTERVAL_POS, 1);
 }

 priv->operating_mode = bss->BSStype;
 priv->channel = bss->channel & 0x7f;
 priv->beacon_period = bss->beacon_period;

 if (priv->preamble != bss->preamble) {
  priv->preamble = bss->preamble;
  atmel_set_mib8(priv, Local_Mib_Type,
          LOCAL_MIB_PREAMBLE_TYPE, bss->preamble);
 }

 if (!priv->wep_is_on && bss->UsingWEP) {
  atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
  priv->station_is_associated = 0;
  return;
 }

 if (priv->wep_is_on && !bss->UsingWEP) {
  atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
  priv->station_is_associated = 0;
  return;
 }

 atmel_enter_state(priv, STATION_STATE_JOINNING);

 if (priv->operating_mode == IW_MODE_INFRA)
  join(priv, BSS_TYPE_INFRASTRUCTURE);
 else
  join(priv, BSS_TYPE_AD_HOC);
}
