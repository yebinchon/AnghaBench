
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {scalar_t__ is_joining; int self_dpu_desc_index; int self_sta_index; } ;
struct wcn36xx_tx_bd {int dpu_ne; int ub; int ack_policy; int queue_id; void* bd_rate; int dpu_desc_idx; int sta_index; } ;
struct wcn36xx {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_qos_hdr {int dummy; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int frame_control; int addr2; } ;


 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ WCN36XX_BAND (struct wcn36xx*) ;
 void* WCN36XX_BD_RATE_CTRL ;
 void* WCN36XX_BD_RATE_MGMT ;
 int WCN36XX_TID ;
 int WCN36XX_TX_B_WQ_ID ;
 int WCN36XX_TX_U_WQ_ID ;
 struct wcn36xx_vif* get_vif_by_addr (struct wcn36xx*,int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_probe_req (int ) ;
 int wcn36xx_set_tx_pdu (struct wcn36xx_tx_bd*,int,int ,int ) ;
 int wcn36xx_warn (char*) ;

__attribute__((used)) static void wcn36xx_set_tx_mgmt(struct wcn36xx_tx_bd *bd,
    struct wcn36xx *wcn,
    struct wcn36xx_vif **vif_priv,
    struct sk_buff *skb,
    bool bcast)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct wcn36xx_vif *__vif_priv =
  get_vif_by_addr(wcn, hdr->addr2);
 bd->sta_index = __vif_priv->self_sta_index;
 bd->dpu_desc_idx = __vif_priv->self_dpu_desc_index;
 bd->dpu_ne = 1;


 if (ieee80211_is_mgmt(hdr->frame_control))
  bd->bd_rate = (WCN36XX_BAND(wcn) == NL80211_BAND_5GHZ) ?
   WCN36XX_BD_RATE_CTRL :
   WCN36XX_BD_RATE_MGMT;
 else if (ieee80211_is_ctl(hdr->frame_control))
  bd->bd_rate = WCN36XX_BD_RATE_CTRL;
 else
  wcn36xx_warn("frame control type unknown\n");





 if (__vif_priv->is_joining &&
     ieee80211_is_probe_req(hdr->frame_control))
  bcast = 0;

 if (bcast) {

  bd->ub = 1;

  bd->ack_policy = 1;
  bd->queue_id = WCN36XX_TX_B_WQ_ID;
 } else
  bd->queue_id = WCN36XX_TX_U_WQ_ID;
 *vif_priv = __vif_priv;

 wcn36xx_set_tx_pdu(bd,
      ieee80211_is_data_qos(hdr->frame_control) ?
      sizeof(struct ieee80211_qos_hdr) :
      sizeof(struct ieee80211_hdr_3addr),
      skb->len, WCN36XX_TID);
}
