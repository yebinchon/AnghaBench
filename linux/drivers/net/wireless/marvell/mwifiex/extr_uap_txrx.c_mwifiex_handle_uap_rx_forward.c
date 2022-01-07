
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uap_rxpd {int rx_pkt_offset; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int h_dest; } ;
struct rx_packet_hdr {TYPE_1__ eth803_hdr; } ;
struct mwifiex_private {int media_connected; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int dummy; } ;


 int ERROR ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_get_sta_entry (struct mwifiex_private*,int *) ;
 int mwifiex_process_rx_packet (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_uap_queue_bridged_pkt (struct mwifiex_private*,struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;

int mwifiex_handle_uap_rx_forward(struct mwifiex_private *priv,
      struct sk_buff *skb)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct uap_rxpd *uap_rx_pd;
 struct rx_packet_hdr *rx_pkt_hdr;
 u8 ra[ETH_ALEN];
 struct sk_buff *skb_uap;

 uap_rx_pd = (struct uap_rxpd *)(skb->data);
 rx_pkt_hdr = (void *)uap_rx_pd + le16_to_cpu(uap_rx_pd->rx_pkt_offset);


 if (!priv->media_connected) {
  mwifiex_dbg(adapter, ERROR,
       "drop packet in disconnected state.\n");
  dev_kfree_skb_any(skb);
  return 0;
 }

 memcpy(ra, rx_pkt_hdr->eth803_hdr.h_dest, ETH_ALEN);

 if (is_multicast_ether_addr(ra)) {
  skb_uap = skb_copy(skb, GFP_ATOMIC);
  mwifiex_uap_queue_bridged_pkt(priv, skb_uap);
 } else {
  if (mwifiex_get_sta_entry(priv, ra)) {

   mwifiex_uap_queue_bridged_pkt(priv, skb);
   return 0;
  }
 }


 return mwifiex_process_rx_packet(priv, skb);
}
