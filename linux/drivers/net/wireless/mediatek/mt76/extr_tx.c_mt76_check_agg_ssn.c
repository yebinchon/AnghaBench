
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct mt76_txq {scalar_t__ agg_ssn; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;


 int ieee80211_is_data_present (int ) ;
 int ieee80211_is_data_qos (int ) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void
mt76_check_agg_ssn(struct mt76_txq *mtxq, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (!ieee80211_is_data_qos(hdr->frame_control) ||
     !ieee80211_is_data_present(hdr->frame_control))
  return;

 mtxq->agg_ssn = le16_to_cpu(hdr->seq_ctrl) + 0x10;
}
