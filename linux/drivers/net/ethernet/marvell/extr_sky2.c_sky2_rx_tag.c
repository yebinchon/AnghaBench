
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sky2_port {size_t rx_next; TYPE_1__* rx_ring; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;


 int ETH_P_8021Q ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int be16_to_cpu (int ) ;
 int htons (int ) ;

__attribute__((used)) static void sky2_rx_tag(struct sky2_port *sky2, u16 length)
{
 struct sk_buff *skb;

 skb = sky2->rx_ring[sky2->rx_next].skb;
 __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), be16_to_cpu(length));
}
