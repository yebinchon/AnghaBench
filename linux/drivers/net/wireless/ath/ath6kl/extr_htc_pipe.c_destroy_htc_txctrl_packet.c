
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct htc_packet {struct sk_buff* skb; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int kfree (struct htc_packet*) ;

__attribute__((used)) static void destroy_htc_txctrl_packet(struct htc_packet *packet)
{
 struct sk_buff *skb;
 skb = packet->skb;
 dev_kfree_skb(skb);
 kfree(packet);
}
