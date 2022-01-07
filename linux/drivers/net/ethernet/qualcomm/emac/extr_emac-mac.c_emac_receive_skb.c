
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct emac_rx_queue {int napi; } ;


 int EMAC_TAG_TO_VLAN (int ,int ) ;
 int ETH_P_8021Q ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int htons (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;

__attribute__((used)) static void emac_receive_skb(struct emac_rx_queue *rx_q,
        struct sk_buff *skb,
        u16 vlan_tag, bool vlan_flag)
{
 if (vlan_flag) {
  u16 vlan;

  EMAC_TAG_TO_VLAN(vlan_tag, vlan);
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan);
 }

 napi_gro_receive(&rx_q->napi, skb);
}
