
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct pppoe_hdr {int sid; int length; } ;
struct packet_type {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int h_source; } ;


 scalar_t__ ETH_HLEN ;
 int GFP_ATOMIC ;
 int NET_RX_DROP ;
 int dev_net (struct net_device*) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 struct pppox_sock* get_item (struct pppoe_net*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 struct pppoe_hdr* pppoe_hdr (struct sk_buff*) ;
 struct pppoe_net* pppoe_pernet (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 int sk_pppox (struct pppox_sock*) ;
 int sk_receive_skb (int ,struct sk_buff*,int ) ;
 scalar_t__ skb_mac_header_len (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static int pppoe_rcv(struct sk_buff *skb, struct net_device *dev,
       struct packet_type *pt, struct net_device *orig_dev)
{
 struct pppoe_hdr *ph;
 struct pppox_sock *po;
 struct pppoe_net *pn;
 int len;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  goto out;

 if (skb_mac_header_len(skb) < ETH_HLEN)
  goto drop;

 if (!pskb_may_pull(skb, sizeof(struct pppoe_hdr)))
  goto drop;

 ph = pppoe_hdr(skb);
 len = ntohs(ph->length);

 skb_pull_rcsum(skb, sizeof(*ph));
 if (skb->len < len)
  goto drop;

 if (pskb_trim_rcsum(skb, len))
  goto drop;

 ph = pppoe_hdr(skb);
 pn = pppoe_pernet(dev_net(dev));




 po = get_item(pn, ph->sid, eth_hdr(skb)->h_source, dev->ifindex);
 if (!po)
  goto drop;

 return sk_receive_skb(sk_pppox(po), skb, 0);

drop:
 kfree_skb(skb);
out:
 return NET_RX_DROP;
}
