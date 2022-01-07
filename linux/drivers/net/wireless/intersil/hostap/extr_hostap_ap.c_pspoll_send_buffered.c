
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; int tx_buf; } ;
struct sk_buff {scalar_t__ cb; } ;
struct hostap_skb_tx_data {int flags; } ;
typedef int local_info_t ;


 int HOSTAP_TX_FLAGS_ADD_MOREDATA ;
 int HOSTAP_TX_FLAGS_BUFFERED_FRAME ;
 int WLAN_STA_PS ;
 int dev_queue_xmit (struct sk_buff*) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static void pspoll_send_buffered(local_info_t *local, struct sta_info *sta,
     struct sk_buff *skb)
{
 struct hostap_skb_tx_data *meta;

 if (!(sta->flags & WLAN_STA_PS)) {


  dev_queue_xmit(skb);
  return;
 }



 meta = (struct hostap_skb_tx_data *) skb->cb;
 meta->flags |= HOSTAP_TX_FLAGS_BUFFERED_FRAME;
 if (!skb_queue_empty(&sta->tx_buf)) {

  meta->flags |= HOSTAP_TX_FLAGS_ADD_MOREDATA;
 }
 dev_queue_xmit(skb);
}
