
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_rx_status_extended {int dummy; } ;
struct sk_buff {int dummy; } ;


 int wil_rx_status_get_cid (struct wil_rx_status_extended*) ;
 int wil_rx_status_get_security (struct wil_rx_status_extended*) ;
 struct wil_rx_status_extended* wil_skb_rxstatus (struct sk_buff*) ;

__attribute__((used)) static void wil_get_netif_rx_params_edma(struct sk_buff *skb, int *cid,
      int *security)
{
 struct wil_rx_status_extended *s = wil_skb_rxstatus(skb);

 *cid = wil_rx_status_get_cid(s);
 *security = wil_rx_status_get_security(s);
}
