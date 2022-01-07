
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct e1000_adapter {int napi; int netdev; } ;
typedef int __le16 ;


 int E1000_RXD_SPC_VLAN_MASK ;
 int E1000_RXD_STAT_VP ;
 int ETH_P_8021Q ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int ) ;
 int le16_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;

__attribute__((used)) static void e1000_receive_skb(struct e1000_adapter *adapter, u8 status,
         __le16 vlan, struct sk_buff *skb)
{
 skb->protocol = eth_type_trans(skb, adapter->netdev);

 if (status & E1000_RXD_STAT_VP) {
  u16 vid = le16_to_cpu(vlan) & E1000_RXD_SPC_VLAN_MASK;

  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
 }
 napi_gro_receive(&adapter->napi, skb);
}
