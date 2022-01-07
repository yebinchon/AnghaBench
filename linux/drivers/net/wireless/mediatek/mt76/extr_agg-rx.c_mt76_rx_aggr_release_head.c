
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct mt76_rx_tid {int head; int size; scalar_t__* reorder_buf; } ;


 int mt76_aggr_release (struct mt76_rx_tid*,struct sk_buff_head*,int) ;

__attribute__((used)) static void
mt76_rx_aggr_release_head(struct mt76_rx_tid *tid, struct sk_buff_head *frames)
{
 int idx = tid->head % tid->size;

 while (tid->reorder_buf[idx]) {
  mt76_aggr_release(tid, frames, idx);
  idx = tid->head % tid->size;
 }
}
