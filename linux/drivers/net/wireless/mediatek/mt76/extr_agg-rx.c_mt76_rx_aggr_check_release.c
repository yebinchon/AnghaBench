
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct mt76_rx_tid {int nframes; int head; int size; struct sk_buff** reorder_buf; } ;
struct mt76_rx_status {int seqno; scalar_t__ reorder_time; } ;


 scalar_t__ REORDER_TIMEOUT ;
 int jiffies ;
 int mt76_rx_aggr_release_frames (struct mt76_rx_tid*,struct sk_buff_head*,int ) ;
 int mt76_rx_aggr_release_head (struct mt76_rx_tid*,struct sk_buff_head*) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static void
mt76_rx_aggr_check_release(struct mt76_rx_tid *tid, struct sk_buff_head *frames)
{
 struct mt76_rx_status *status;
 struct sk_buff *skb;
 int start, idx, nframes;

 if (!tid->nframes)
  return;

 mt76_rx_aggr_release_head(tid, frames);

 start = tid->head % tid->size;
 nframes = tid->nframes;

 for (idx = (tid->head + 1) % tid->size;
      idx != start && nframes;
      idx = (idx + 1) % tid->size) {
  skb = tid->reorder_buf[idx];
  if (!skb)
   continue;

  nframes--;
  status = (struct mt76_rx_status *)skb->cb;
  if (!time_after(jiffies,
    status->reorder_time + REORDER_TIMEOUT))
   continue;

  mt76_rx_aggr_release_frames(tid, frames, status->seqno);
 }

 mt76_rx_aggr_release_head(tid, frames);
}
