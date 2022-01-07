
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_test_priv {int ok; int comp; } ;
struct sk_buff {int dummy; } ;
struct packet_type {struct stmmac_test_priv* af_packet_priv; } ;
struct net_device {int dev_addr; } ;
struct ethhdr {scalar_t__ h_proto; int h_source; } ;


 int ETH_P_PAUSE ;
 int complete (int *) ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static int stmmac_test_flowctrl_validate(struct sk_buff *skb,
      struct net_device *ndev,
      struct packet_type *pt,
      struct net_device *orig_ndev)
{
 struct stmmac_test_priv *tpriv = pt->af_packet_priv;
 struct ethhdr *ehdr;

 ehdr = (struct ethhdr *)skb_mac_header(skb);
 if (!ether_addr_equal(ehdr->h_source, orig_ndev->dev_addr))
  goto out;
 if (ehdr->h_proto != htons(ETH_P_PAUSE))
  goto out;

 tpriv->ok = 1;
 complete(&tpriv->comp);
out:
 kfree_skb(skb);
 return 0;
}
