
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __le16 ;


 int TXFLAG_TAGON ;
 int cpu_to_le16 (int ) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static inline void
jme_tx_vlan(struct sk_buff *skb, __le16 *vlan, u8 *flags)
{
 if (skb_vlan_tag_present(skb)) {
  *flags |= TXFLAG_TAGON;
  *vlan = cpu_to_le16(skb_vlan_tag_get(skb));
 }
}
