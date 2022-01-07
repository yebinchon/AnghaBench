
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int TxVlanTag ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int swab16 (int ) ;

__attribute__((used)) static inline u32 rtl8169_tx_vlan_tag(struct sk_buff *skb)
{
 return (skb_vlan_tag_present(skb)) ?
  TxVlanTag | swab16(skb_vlan_tag_get(skb)) : 0x00;
}
