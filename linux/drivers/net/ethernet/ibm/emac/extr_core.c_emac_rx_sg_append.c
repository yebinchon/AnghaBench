
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rx_dropped_mtu; } ;
struct emac_instance {scalar_t__ rx_skb_size; TYPE_4__* rx_sg_skb; TYPE_3__** rx_skb; TYPE_2__ estats; TYPE_1__* rx_desc; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_7__ {int data_len; } ;


 scalar_t__ NET_IP_ALIGN ;
 int dev_kfree_skb (TYPE_4__*) ;
 int emac_recycle_rx_skb (struct emac_instance*,int,int) ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int ,int) ;
 int skb_put (TYPE_4__*,int) ;
 int skb_tail_pointer (TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int emac_rx_sg_append(struct emac_instance *dev, int slot)
{
 if (likely(dev->rx_sg_skb != ((void*)0))) {
  int len = dev->rx_desc[slot].data_len;
  int tot_len = dev->rx_sg_skb->len + len;

  if (unlikely(tot_len + NET_IP_ALIGN > dev->rx_skb_size)) {
   ++dev->estats.rx_dropped_mtu;
   dev_kfree_skb(dev->rx_sg_skb);
   dev->rx_sg_skb = ((void*)0);
  } else {
   memcpy(skb_tail_pointer(dev->rx_sg_skb),
      dev->rx_skb[slot]->data, len);
   skb_put(dev->rx_sg_skb, len);
   emac_recycle_rx_skb(dev, slot, len);
   return 0;
  }
 }
 emac_recycle_rx_skb(dev, slot, 0);
 return -1;
}
