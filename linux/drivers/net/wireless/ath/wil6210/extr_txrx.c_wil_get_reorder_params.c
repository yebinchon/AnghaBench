
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil6210_priv {int dummy; } ;
struct vring_rx_desc {int dummy; } ;
struct sk_buff {int dummy; } ;


 int wil_rxdesc_mcast (struct vring_rx_desc*) ;
 int wil_rxdesc_mid (struct vring_rx_desc*) ;
 int wil_rxdesc_retry (struct vring_rx_desc*) ;
 int wil_rxdesc_seq (struct vring_rx_desc*) ;
 int wil_rxdesc_tid (struct vring_rx_desc*) ;
 int wil_skb_get_cid (struct sk_buff*) ;
 struct vring_rx_desc* wil_skb_rxdesc (struct sk_buff*) ;

__attribute__((used)) static void wil_get_reorder_params(struct wil6210_priv *wil,
       struct sk_buff *skb, int *tid, int *cid,
       int *mid, u16 *seq, int *mcast, int *retry)
{
 struct vring_rx_desc *d = wil_skb_rxdesc(skb);

 *tid = wil_rxdesc_tid(d);
 *cid = wil_skb_get_cid(skb);
 *mid = wil_rxdesc_mid(d);
 *seq = wil_rxdesc_seq(d);
 *mcast = wil_rxdesc_mcast(d);
 *retry = wil_rxdesc_retry(d);
}
