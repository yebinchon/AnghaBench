
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rx_desc {int opts2; } ;


 int ETH_P_8021Q ;
 int RX_VLAN_TAG ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int htons (int ) ;
 int le32_to_cpu (int ) ;
 int swab16 (int) ;

__attribute__((used)) static inline void rtl_rx_vlan_tag(struct rx_desc *desc, struct sk_buff *skb)
{
 u32 opts2 = le32_to_cpu(desc->opts2);

 if (opts2 & RX_VLAN_TAG)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
           swab16(opts2 & 0xffff));
}
