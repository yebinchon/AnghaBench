
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcn36xx_vif {int dummy; } ;
struct wcn36xx_tx_bd {int tx_comp; int tx_bd_sign; int dpu_rf; } ;
struct wcn36xx_sta {int dummy; } ;
struct wcn36xx {int hw; int dxe_lock; struct sk_buff* tx_ack_skb; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; int addr1; } ;
typedef int bd ;


 int EINVAL ;
 int IEEE80211_SEQ_TO_SN (int ) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int WCN36XX_BMU_WQ_TX ;
 int WCN36XX_DBG_DXE ;
 int WCN36XX_DBG_TX ;
 int WCN36XX_DBG_TX_DUMP ;
 int __le16_to_cpu (int ) ;
 int buff_to_be (int *,int) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_stop_queues (int ) ;
 int ieee80211_wake_queues (int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memset (struct wcn36xx_tx_bd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wcn36xx_dbg (int ,char*,...) ;
 int wcn36xx_dbg_dump (int ,char*,scalar_t__,int ) ;
 int wcn36xx_dxe_tx_frame (struct wcn36xx*,struct wcn36xx_vif*,struct wcn36xx_tx_bd*,struct sk_buff*,int) ;
 int wcn36xx_set_tx_data (struct wcn36xx_tx_bd*,struct wcn36xx*,struct wcn36xx_vif**,struct wcn36xx_sta*,struct sk_buff*,int) ;
 int wcn36xx_set_tx_mgmt (struct wcn36xx_tx_bd*,struct wcn36xx*,struct wcn36xx_vif**,struct sk_buff*,int) ;
 int wcn36xx_warn (char*) ;

int wcn36xx_start_tx(struct wcn36xx *wcn,
       struct wcn36xx_sta *sta_priv,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct wcn36xx_vif *vif_priv = ((void*)0);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 unsigned long flags;
 bool is_low = ieee80211_is_data(hdr->frame_control);
 bool bcast = is_broadcast_ether_addr(hdr->addr1) ||
  is_multicast_ether_addr(hdr->addr1);
 struct wcn36xx_tx_bd bd;
 int ret;

 memset(&bd, 0, sizeof(bd));

 wcn36xx_dbg(WCN36XX_DBG_TX,
      "tx skb %p len %d fc %04x sn %d %s %s\n",
      skb, skb->len, __le16_to_cpu(hdr->frame_control),
      IEEE80211_SEQ_TO_SN(__le16_to_cpu(hdr->seq_ctrl)),
      is_low ? "low" : "high", bcast ? "bcast" : "ucast");

 wcn36xx_dbg_dump(WCN36XX_DBG_TX_DUMP, "", skb->data, skb->len);

 bd.dpu_rf = WCN36XX_BMU_WQ_TX;

 bd.tx_comp = !!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS);
 if (bd.tx_comp) {
  wcn36xx_dbg(WCN36XX_DBG_DXE, "TX_ACK status requested\n");
  spin_lock_irqsave(&wcn->dxe_lock, flags);
  if (wcn->tx_ack_skb) {
   spin_unlock_irqrestore(&wcn->dxe_lock, flags);
   wcn36xx_warn("tx_ack_skb already set\n");
   return -EINVAL;
  }

  wcn->tx_ack_skb = skb;
  spin_unlock_irqrestore(&wcn->dxe_lock, flags);






  ieee80211_stop_queues(wcn->hw);
 }


 if (is_low)
  wcn36xx_set_tx_data(&bd, wcn, &vif_priv, sta_priv, skb, bcast);
 else

  wcn36xx_set_tx_mgmt(&bd, wcn, &vif_priv, skb, bcast);

 buff_to_be((u32 *)&bd, sizeof(bd)/sizeof(u32));
 bd.tx_bd_sign = 0xbdbdbdbd;

 ret = wcn36xx_dxe_tx_frame(wcn, vif_priv, &bd, skb, is_low);
 if (ret && bd.tx_comp) {



  spin_lock_irqsave(&wcn->dxe_lock, flags);
  wcn->tx_ack_skb = ((void*)0);
  spin_unlock_irqrestore(&wcn->dxe_lock, flags);

  ieee80211_wake_queues(wcn->hw);
 }

 return ret;
}
