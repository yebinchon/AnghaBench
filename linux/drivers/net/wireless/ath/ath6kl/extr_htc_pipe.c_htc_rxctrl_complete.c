
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct htc_target {int dummy; } ;
struct htc_packet {scalar_t__ endpoint; int status; struct sk_buff* skb; } ;


 int ECANCELED ;
 scalar_t__ ENDPOINT_0 ;
 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void htc_rxctrl_complete(struct htc_target *context,
    struct htc_packet *packet)
{
 struct sk_buff *skb = packet->skb;

 if (packet->endpoint == ENDPOINT_0 &&
     packet->status == -ECANCELED &&
     skb != ((void*)0))
  dev_kfree_skb(skb);
}
