
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int * aggr; } ;
struct mt76_rx_tid {int lock; } ;
struct mt76_rx_status {int tid; struct mt76_wcid* wcid; } ;
struct ieee80211_bar {int start_seq_num; int control; int frame_control; } ;


 int IEEE80211_SEQ_TO_SN (int) ;
 int ieee80211_is_back_req (int ) ;
 int ieee80211_is_ctl (int ) ;
 int le16_to_cpu (int ) ;
 int mt76_rx_aggr_release_frames (struct mt76_rx_tid*,struct sk_buff_head*,int ) ;
 int mt76_rx_aggr_release_head (struct mt76_rx_tid*,struct sk_buff_head*) ;
 struct mt76_rx_tid* rcu_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mt76_rx_aggr_check_ctl(struct sk_buff *skb, struct sk_buff_head *frames)
{
 struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
 struct ieee80211_bar *bar = (struct ieee80211_bar *)skb->data;
 struct mt76_wcid *wcid = status->wcid;
 struct mt76_rx_tid *tid;
 u16 seqno;

 if (!ieee80211_is_ctl(bar->frame_control))
  return;

 if (!ieee80211_is_back_req(bar->frame_control))
  return;

 status->tid = le16_to_cpu(bar->control) >> 12;
 seqno = IEEE80211_SEQ_TO_SN(le16_to_cpu(bar->start_seq_num));
 tid = rcu_dereference(wcid->aggr[status->tid]);
 if (!tid)
  return;

 spin_lock_bh(&tid->lock);
 mt76_rx_aggr_release_frames(tid, frames, seqno);
 mt76_rx_aggr_release_head(tid, frames);
 spin_unlock_bh(&tid->lock);
}
