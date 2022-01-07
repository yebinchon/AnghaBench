
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_rx_desc {int dummy; } ;
struct sk_buff {int dummy; } ;


 int wil_rxdesc_security (struct vring_rx_desc*) ;
 int wil_skb_get_cid (struct sk_buff*) ;
 struct vring_rx_desc* wil_skb_rxdesc (struct sk_buff*) ;

__attribute__((used)) static void wil_get_netif_rx_params(struct sk_buff *skb, int *cid,
        int *security)
{
 struct vring_rx_desc *d = wil_skb_rxdesc(skb);

 *cid = wil_skb_get_cid(skb);
 *security = wil_rxdesc_security(d);
}
