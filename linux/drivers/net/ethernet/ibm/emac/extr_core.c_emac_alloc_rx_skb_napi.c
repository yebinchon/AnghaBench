
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct emac_instance {int rx_skb_size; TYPE_1__* mal; } ;
struct TYPE_2__ {int napi; } ;


 int __emac_prepare_rx_skb (struct sk_buff*,struct emac_instance*,int) ;
 struct sk_buff* napi_alloc_skb (int *,int ) ;

__attribute__((used)) static int
emac_alloc_rx_skb_napi(struct emac_instance *dev, int slot)
{
 struct sk_buff *skb;

 skb = napi_alloc_skb(&dev->mal->napi, dev->rx_skb_size);

 return __emac_prepare_rx_skb(skb, dev, slot);
}
