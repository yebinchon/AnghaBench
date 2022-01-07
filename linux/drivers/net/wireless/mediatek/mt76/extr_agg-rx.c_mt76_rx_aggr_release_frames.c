
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff_head {int dummy; } ;
struct mt76_rx_tid {int head; int size; } ;


 scalar_t__ ieee80211_sn_less (int,int ) ;
 int mt76_aggr_release (struct mt76_rx_tid*,struct sk_buff_head*,int) ;

__attribute__((used)) static void
mt76_rx_aggr_release_frames(struct mt76_rx_tid *tid,
       struct sk_buff_head *frames,
       u16 head)
{
 int idx;

 while (ieee80211_sn_less(tid->head, head)) {
  idx = tid->head % tid->size;
  mt76_aggr_release(tid, frames, idx);
 }
}
