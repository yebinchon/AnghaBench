
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_packet_data {int vlan_ctag; } ;
struct sk_buff {int dummy; } ;


 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static void xgbe_prep_vlan(struct sk_buff *skb, struct xgbe_packet_data *packet)
{
 if (skb_vlan_tag_present(skb))
  packet->vlan_ctag = skb_vlan_tag_get(skb);
}
