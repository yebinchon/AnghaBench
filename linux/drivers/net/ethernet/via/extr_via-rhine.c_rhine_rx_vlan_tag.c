
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rx_desc {int desc_length; } ;


 int DescTag ;
 int ETH_P_8021Q ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int cpu_to_le32 (int ) ;
 int dma_rmb () ;
 int htons (int ) ;
 int rhine_get_vlan_tci (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void rhine_rx_vlan_tag(struct sk_buff *skb, struct rx_desc *desc,
         int data_size)
{
 dma_rmb();
 if (unlikely(desc->desc_length & cpu_to_le32(DescTag))) {
  u16 vlan_tci;

  vlan_tci = rhine_get_vlan_tci(skb, data_size);
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tci);
 }
}
