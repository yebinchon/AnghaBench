
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txfcb {int vlctl; int flags; } ;
struct sk_buff {int dummy; } ;


 int TXFCB_VLN ;
 int cpu_to_be16 (int ) ;
 int skb_vlan_tag_get (struct sk_buff*) ;

__attribute__((used)) static inline void gfar_tx_vlan(struct sk_buff *skb, struct txfcb *fcb)
{
 fcb->flags |= TXFCB_VLN;
 fcb->vlctl = cpu_to_be16(skb_vlan_tag_get(skb));
}
