
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
struct beacon_bc_data {int * tail; int q; struct mt76x02_dev* dev; } ;


 int ARRAY_SIZE (int *) ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int __skb_queue_head_init (int *) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct beacon_bc_data*) ;
 int mt76_hw (struct mt76x02_dev*) ;
 int mt76_skb_set_moredata (int ,int) ;
 int mt76x02_add_buffered_bc ;
 int skb_queue_len (int *) ;

void
mt76x02_enqueue_buffered_bc(struct mt76x02_dev *dev,
       struct beacon_bc_data *data,
       int max_nframes)
{
 int i, nframes;

 data->dev = dev;
 __skb_queue_head_init(&data->q);

 do {
  nframes = skb_queue_len(&data->q);
  ieee80211_iterate_active_interfaces_atomic(mt76_hw(dev),
   IEEE80211_IFACE_ITER_RESUME_ALL,
   mt76x02_add_buffered_bc, data);
 } while (nframes != skb_queue_len(&data->q) &&
   skb_queue_len(&data->q) < max_nframes);

 if (!skb_queue_len(&data->q))
  return;

 for (i = 0; i < ARRAY_SIZE(data->tail); i++) {
  if (!data->tail[i])
   continue;
  mt76_skb_set_moredata(data->tail[i], 0);
 }
}
