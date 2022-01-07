
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_tid_ampdu_rx {int head_seq_num; struct sk_buff** reorder_buf; int stored_mpdu_num; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int seq_inc (int ) ;
 int wil_netif_rx_any (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void wil_release_reorder_frame(struct net_device *ndev,
          struct wil_tid_ampdu_rx *r,
          int index)
{
 struct sk_buff *skb = r->reorder_buf[index];

 if (!skb)
  goto no_frame;


 r->stored_mpdu_num--;
 r->reorder_buf[index] = ((void*)0);
 wil_netif_rx_any(skb, ndev);

no_frame:
 r->head_seq_num = seq_inc(r->head_seq_num);
}
