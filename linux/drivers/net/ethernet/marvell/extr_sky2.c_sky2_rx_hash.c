
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sky2_port {size_t rx_next; TYPE_1__* rx_ring; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;


 int PKT_HASH_TYPE_L3 ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void sky2_rx_hash(struct sky2_port *sky2, u32 status)
{
 struct sk_buff *skb;

 skb = sky2->rx_ring[sky2->rx_next].skb;
 skb_set_hash(skb, le32_to_cpu(status), PKT_HASH_TYPE_L3);
}
