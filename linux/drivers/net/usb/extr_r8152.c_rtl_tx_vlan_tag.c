
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_desc {int opts2; } ;
struct sk_buff {int dummy; } ;


 int TX_VLAN_TAG ;
 int cpu_to_le32 (int) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int swab16 (int ) ;

__attribute__((used)) static inline void rtl_tx_vlan_tag(struct tx_desc *desc, struct sk_buff *skb)
{
 if (skb_vlan_tag_present(skb)) {
  u32 opts2;

  opts2 = TX_VLAN_TAG | swab16(skb_vlan_tag_get(skb));
  desc->opts2 |= cpu_to_le32(opts2);
 }
}
