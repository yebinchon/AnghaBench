
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wcn36xx_sta {scalar_t__* ampdu_state; int ampdu_lock; scalar_t__ non_agg_frame_ct; } ;
struct wcn36xx {TYPE_1__* hw; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_2__ {int conf; } ;


 scalar_t__ IEEE80211_AC_VO ;
 size_t IEEE80211_QOS_CTL_TID_MASK ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WCN36XX_AMPDU_NONE ;
 scalar_t__ WCN36XX_AMPDU_START ;
 scalar_t__ WCN36XX_AMPDU_START_THRESH ;
 int conf_is_ht (int *) ;
 size_t* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data_qos (int ) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,size_t,int ) ;
 scalar_t__ skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ieee80211_sta* wcn36xx_priv_to_sta (struct wcn36xx_sta*) ;

__attribute__((used)) static void wcn36xx_tx_start_ampdu(struct wcn36xx *wcn,
       struct wcn36xx_sta *sta_priv,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_sta *sta;
 u8 *qc, tid;

 if (!conf_is_ht(&wcn->hw->conf))
  return;

 sta = wcn36xx_priv_to_sta(sta_priv);

 if (WARN_ON(!ieee80211_is_data_qos(hdr->frame_control)))
  return;

 if (skb_get_queue_mapping(skb) == IEEE80211_AC_VO)
  return;

 qc = ieee80211_get_qos_ctl(hdr);
 tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;

 spin_lock(&sta_priv->ampdu_lock);
 if (sta_priv->ampdu_state[tid] != WCN36XX_AMPDU_NONE)
  goto out_unlock;

 if (sta_priv->non_agg_frame_ct++ >= WCN36XX_AMPDU_START_THRESH) {
  sta_priv->ampdu_state[tid] = WCN36XX_AMPDU_START;
  sta_priv->non_agg_frame_ct = 0;
  ieee80211_start_tx_ba_session(sta, tid, 0);
 }
out_unlock:
 spin_unlock(&sta_priv->ampdu_lock);
}
