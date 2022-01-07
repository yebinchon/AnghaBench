
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sky2_port {unsigned int rx_data_size; TYPE_1__* hw; } ;
struct sk_buff {int data; } ;
struct rx_ring_info {struct sk_buff* skb; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int pdev; } ;


 int GFP_ATOMIC ;
 int dev_kfree_skb (struct sk_buff*) ;
 int prefetch (int ) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_put_frags (struct sk_buff*,unsigned int,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* sky2_rx_alloc (struct sky2_port*,int ) ;
 scalar_t__ sky2_rx_map_skb (int ,struct rx_ring_info*,unsigned int) ;
 int sky2_rx_unmap_skb (int ,struct rx_ring_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *receive_new(struct sky2_port *sky2,
       struct rx_ring_info *re,
       unsigned int length)
{
 struct sk_buff *skb;
 struct rx_ring_info nre;
 unsigned hdr_space = sky2->rx_data_size;

 nre.skb = sky2_rx_alloc(sky2, GFP_ATOMIC);
 if (unlikely(!nre.skb))
  goto nobuf;

 if (sky2_rx_map_skb(sky2->hw->pdev, &nre, hdr_space))
  goto nomap;

 skb = re->skb;
 sky2_rx_unmap_skb(sky2->hw->pdev, re);
 prefetch(skb->data);
 *re = nre;

 if (skb_shinfo(skb)->nr_frags)
  skb_put_frags(skb, hdr_space, length);
 else
  skb_put(skb, length);
 return skb;

nomap:
 dev_kfree_skb(nre.skb);
nobuf:
 return ((void*)0);
}
