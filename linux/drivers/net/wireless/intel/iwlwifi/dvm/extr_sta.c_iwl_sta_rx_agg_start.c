
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct iwl_priv {int sta_lock; TYPE_2__* stations; int mutex; } ;
struct iwl_addsta_cmd {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int modify_mask; } ;
struct TYPE_6__ {int mode; int add_immediate_ba_ssn; scalar_t__ add_immediate_ba_tid; TYPE_1__ sta; scalar_t__ station_flags_msk; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;


 int ENXIO ;
 int IWL_INVALID_STATION ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_ADDBA_TID_MSK ;
 int cpu_to_le16 (int ) ;
 int iwl_send_add_sta (struct iwl_priv*,struct iwl_addsta_cmd*,int ) ;
 int iwl_sta_id (struct ieee80211_sta*) ;
 int lockdep_assert_held (int *) ;
 int memcpy (struct iwl_addsta_cmd*,TYPE_3__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_sta_rx_agg_start(struct iwl_priv *priv, struct ieee80211_sta *sta,
    int tid, u16 ssn)
{
 int sta_id;
 struct iwl_addsta_cmd sta_cmd;

 lockdep_assert_held(&priv->mutex);

 sta_id = iwl_sta_id(sta);
 if (sta_id == IWL_INVALID_STATION)
  return -ENXIO;

 spin_lock_bh(&priv->sta_lock);
 priv->stations[sta_id].sta.station_flags_msk = 0;
 priv->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_ADDBA_TID_MSK;
 priv->stations[sta_id].sta.add_immediate_ba_tid = (u8)tid;
 priv->stations[sta_id].sta.add_immediate_ba_ssn = cpu_to_le16(ssn);
 priv->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
 memcpy(&sta_cmd, &priv->stations[sta_id].sta, sizeof(struct iwl_addsta_cmd));
 spin_unlock_bh(&priv->sta_lock);

 return iwl_send_add_sta(priv, &sta_cmd, 0);
}
