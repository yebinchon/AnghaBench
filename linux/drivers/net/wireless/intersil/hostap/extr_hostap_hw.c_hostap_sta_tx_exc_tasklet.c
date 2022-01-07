
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct hfa384x_tx_frame {int frame_control; } ;
struct TYPE_3__ {int sta_tx_exc_list; } ;
typedef TYPE_1__ local_info_t ;


 int dev_kfree_skb (struct sk_buff*) ;
 int hostap_80211_get_hdrlen (int ) ;
 int hostap_handle_sta_tx_exc (TYPE_1__*,struct sk_buff*) ;
 int memmove (int ,int *,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void hostap_sta_tx_exc_tasklet(unsigned long data)
{
 local_info_t *local = (local_info_t *) data;
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&local->sta_tx_exc_list)) != ((void*)0)) {
  struct hfa384x_tx_frame *txdesc =
   (struct hfa384x_tx_frame *) skb->data;

  if (skb->len >= sizeof(*txdesc)) {


   int hdrlen = hostap_80211_get_hdrlen(txdesc->frame_control);
   memmove(skb_pull(skb, sizeof(*txdesc) - hdrlen),
    &txdesc->frame_control, hdrlen);

   hostap_handle_sta_tx_exc(local, skb);
  }
  dev_kfree_skb(skb);
 }
}
