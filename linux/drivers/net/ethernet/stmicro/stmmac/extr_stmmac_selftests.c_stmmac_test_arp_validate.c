
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_test_priv {int ok; int comp; TYPE_1__* packet; } ;
struct sk_buff {int dummy; } ;
struct packet_type {struct stmmac_test_priv* af_packet_priv; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_dest; } ;
struct arphdr {scalar_t__ ar_op; } ;
struct TYPE_2__ {int src; } ;


 int ARPOP_REPLY ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int complete (int *) ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static int stmmac_test_arp_validate(struct sk_buff *skb,
        struct net_device *ndev,
        struct packet_type *pt,
        struct net_device *orig_ndev)
{
 struct stmmac_test_priv *tpriv = pt->af_packet_priv;
 struct ethhdr *ehdr;
 struct arphdr *ahdr;

 ehdr = (struct ethhdr *)skb_mac_header(skb);
 if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->src))
  goto out;

 ahdr = arp_hdr(skb);
 if (ahdr->ar_op != htons(ARPOP_REPLY))
  goto out;

 tpriv->ok = 1;
 complete(&tpriv->comp);
out:
 kfree_skb(skb);
 return 0;
}
