
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spider_net_hw_descr {int data_status; int data_error; int valid_size; } ;
struct spider_net_descr {struct sk_buff* skb; struct spider_net_hw_descr* hwdescr; } ;
struct spider_net_card {struct net_device* netdev; } ;
struct sk_buff {scalar_t__ len; int ip_summed; int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {int features; TYPE_1__ stats; } ;


 int CHECKSUM_UNNECESSARY ;
 int NETIF_F_RXCSUM ;
 int SPIDER_MISALIGN ;
 int SPIDER_NET_DATA_ERR_CKSUM_MASK ;
 int SPIDER_NET_DATA_STATUS_CKSUM_MASK ;
 int SPIDER_NET_VLAN_PACKET ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static void
spider_net_pass_skb_up(struct spider_net_descr *descr,
         struct spider_net_card *card)
{
 struct spider_net_hw_descr *hwdescr = descr->hwdescr;
 struct sk_buff *skb = descr->skb;
 struct net_device *netdev = card->netdev;
 u32 data_status = hwdescr->data_status;
 u32 data_error = hwdescr->data_error;

 skb_put(skb, hwdescr->valid_size);




 skb_pull(skb, 2);
 skb->protocol = eth_type_trans(skb, netdev);


 skb_checksum_none_assert(skb);
 if (netdev->features & NETIF_F_RXCSUM) {
  if ( ( (data_status & SPIDER_NET_DATA_STATUS_CKSUM_MASK) ==
         SPIDER_NET_DATA_STATUS_CKSUM_MASK) &&
       !(data_error & SPIDER_NET_DATA_ERR_CKSUM_MASK))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }

 if (data_status & SPIDER_NET_VLAN_PACKET) {

 }


 netdev->stats.rx_packets++;
 netdev->stats.rx_bytes += skb->len;


 netif_receive_skb(skb);
}
