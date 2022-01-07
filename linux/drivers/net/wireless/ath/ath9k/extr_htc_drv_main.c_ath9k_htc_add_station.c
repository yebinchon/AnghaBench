
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_vif {size_t addr; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int ampdu_factor; } ;
struct ieee80211_sta {size_t addr; TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ath_common {size_t curbssid; } ;
struct ath9k_htc_vif {size_t index; } ;
struct ath9k_htc_target_sta {int is_vif_sta; int sta_index; size_t vif_index; void* maxampdu; int macaddr; int bssid; } ;
struct ath9k_htc_sta {int index; } ;
struct ath9k_htc_priv {int nstations; int sta_slot; int* vif_sta_pos; int ah; } ;


 int ATH9K_HTC_MAX_STA ;
 int CONFIG ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int IEEE80211_HT_MAX_AMPDU_FACTOR ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_sta*) ;
 int WMI_NODE_CREATE_CMDID ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,int) ;
 int ath_err (struct ath_common*,char*,size_t) ;
 void* cpu_to_be16 (int) ;
 int ffz (int) ;
 int memcpy (int *,size_t,int ) ;
 int memset (struct ath9k_htc_target_sta*,int ,int) ;

__attribute__((used)) static int ath9k_htc_add_station(struct ath9k_htc_priv *priv,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_sta tsta;
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;
 struct ath9k_htc_sta *ista;
 int ret, sta_idx;
 u8 cmd_rsp;
 u16 maxampdu;

 if (priv->nstations >= ATH9K_HTC_MAX_STA)
  return -ENOBUFS;

 sta_idx = ffz(priv->sta_slot);
 if ((sta_idx < 0) || (sta_idx > ATH9K_HTC_MAX_STA))
  return -ENOBUFS;

 memset(&tsta, 0, sizeof(struct ath9k_htc_target_sta));

 if (sta) {
  ista = (struct ath9k_htc_sta *) sta->drv_priv;
  memcpy(&tsta.macaddr, sta->addr, ETH_ALEN);
  memcpy(&tsta.bssid, common->curbssid, ETH_ALEN);
  ista->index = sta_idx;
  tsta.is_vif_sta = 0;
  maxampdu = 1 << (IEEE80211_HT_MAX_AMPDU_FACTOR +
     sta->ht_cap.ampdu_factor);
  tsta.maxampdu = cpu_to_be16(maxampdu);
 } else {
  memcpy(&tsta.macaddr, vif->addr, ETH_ALEN);
  tsta.is_vif_sta = 1;
  tsta.maxampdu = cpu_to_be16(0xffff);
 }

 tsta.sta_index = sta_idx;
 tsta.vif_index = avp->index;

 WMI_CMD_BUF(WMI_NODE_CREATE_CMDID, &tsta);
 if (ret) {
  if (sta)
   ath_err(common,
    "Unable to add station entry for: %pM\n",
    sta->addr);
  return ret;
 }

 if (sta) {
  ath_dbg(common, CONFIG,
   "Added a station entry for: %pM (idx: %d)\n",
   sta->addr, tsta.sta_index);
 } else {
  ath_dbg(common, CONFIG,
   "Added a station entry for VIF %d (idx: %d)\n",
   avp->index, tsta.sta_index);
 }

 priv->sta_slot |= (1 << sta_idx);
 priv->nstations++;
 if (!sta)
  priv->vif_sta_pos[avp->index] = sta_idx;

 return 0;
}
