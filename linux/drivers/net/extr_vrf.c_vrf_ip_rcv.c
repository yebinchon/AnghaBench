
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; int mac_len; int len; int skb_iif; struct net_device* dev; } ;
struct net_device {int ptype_all; int ifindex; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int daddr; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_L3SLAVE ;
 int NFPROTO_IPV4 ;
 int NF_INET_PRE_ROUTING ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_LOOPBACK ;
 int dev_queue_xmit_nit (struct sk_buff*,struct net_device*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int list_empty (int *) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 struct sk_buff* vrf_rcv_nfhook (int ,int ,struct sk_buff*,struct net_device*) ;
 int vrf_rx_stats (struct net_device*,int ) ;

__attribute__((used)) static struct sk_buff *vrf_ip_rcv(struct net_device *vrf_dev,
      struct sk_buff *skb)
{
 skb->dev = vrf_dev;
 skb->skb_iif = vrf_dev->ifindex;
 IPCB(skb)->flags |= IPSKB_L3SLAVE;

 if (ipv4_is_multicast(ip_hdr(skb)->daddr))
  goto out;




 if (skb->pkt_type == PACKET_LOOPBACK) {
  skb->pkt_type = PACKET_HOST;
  goto out;
 }

 vrf_rx_stats(vrf_dev, skb->len);

 if (!list_empty(&vrf_dev->ptype_all)) {
  skb_push(skb, skb->mac_len);
  dev_queue_xmit_nit(skb, vrf_dev);
  skb_pull(skb, skb->mac_len);
 }

 skb = vrf_rcv_nfhook(NFPROTO_IPV4, NF_INET_PRE_ROUTING, skb, vrf_dev);
out:
 return skb;
}
