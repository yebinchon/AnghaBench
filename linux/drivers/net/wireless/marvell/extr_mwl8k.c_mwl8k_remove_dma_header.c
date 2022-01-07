
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int frame_control; } ;
struct mwl8k_dma_data {int data; TYPE_1__ wh; } ;
typedef int __le16 ;


 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int memmove (int,TYPE_1__*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static inline void mwl8k_remove_dma_header(struct sk_buff *skb, __le16 qos)
{
 struct mwl8k_dma_data *tr;
 int hdrlen;

 tr = (struct mwl8k_dma_data *)skb->data;
 hdrlen = ieee80211_hdrlen(tr->wh.frame_control);

 if (hdrlen != sizeof(tr->wh)) {
  if (ieee80211_is_data_qos(tr->wh.frame_control)) {
   memmove(tr->data - hdrlen, &tr->wh, hdrlen - 2);
   *((__le16 *)(tr->data - 2)) = qos;
  } else {
   memmove(tr->data - hdrlen, &tr->wh, hdrlen);
  }
 }

 if (hdrlen != sizeof(*tr))
  skb_pull(skb, sizeof(*tr) - hdrlen);
}
