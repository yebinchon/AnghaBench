
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hns3_enet_ring {TYPE_1__* tqp_vector; } ;
struct TYPE_2__ {int napi; } ;


 int napi_gro_flush (int *,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;

__attribute__((used)) static void hns3_rx_skb(struct hns3_enet_ring *ring, struct sk_buff *skb)
{
 if (skb_has_frag_list(skb))
  napi_gro_flush(&ring->tqp_vector->napi, 0);

 napi_gro_receive(&ring->tqp_vector->napi, skb);
}
