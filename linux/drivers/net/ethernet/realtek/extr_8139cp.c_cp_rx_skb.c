
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int protocol; } ;
struct cp_private {int napi; TYPE_2__* dev; } ;
struct cp_desc {int opts2; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ETH_P_8021Q ;
 int RxVlanTagged ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int htons (int ) ;
 int le32_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int swab16 (int) ;

__attribute__((used)) static inline void cp_rx_skb (struct cp_private *cp, struct sk_buff *skb,
         struct cp_desc *desc)
{
 u32 opts2 = le32_to_cpu(desc->opts2);

 skb->protocol = eth_type_trans (skb, cp->dev);

 cp->dev->stats.rx_packets++;
 cp->dev->stats.rx_bytes += skb->len;

 if (opts2 & RxVlanTagged)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), swab16(opts2 & 0xffff));

 napi_gro_receive(&cp->napi, skb);
}
