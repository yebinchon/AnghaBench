
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
typedef int tx_desc ;
struct usbnet {int maxpacket; TYPE_1__* net; int can_dma_sg; } ;
struct sk_buff {int len; } ;
typedef int gfp_t ;
struct TYPE_4__ {int gso_size; } ;
struct TYPE_3__ {int features; } ;


 int AQ_TX_DESC_DROP_PADD ;
 int AQ_TX_DESC_LEN_MASK ;
 int AQ_TX_DESC_MSS_MASK ;
 int AQ_TX_DESC_MSS_SHIFT ;
 int AQ_TX_DESC_VLAN ;
 int AQ_TX_DESC_VLAN_MASK ;
 int AQ_TX_DESC_VLAN_SHIFT ;
 int NETIF_F_SG ;
 int cpu_to_le64 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int* skb_push (struct sk_buff*,int) ;
 int skb_put_zero (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int usbnet_set_skb_tx_stats (struct sk_buff*,int,int ) ;
 scalar_t__ vlan_get_tag (struct sk_buff*,scalar_t__*) ;

__attribute__((used)) static struct sk_buff *aqc111_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
           gfp_t flags)
{
 int frame_size = dev->maxpacket;
 struct sk_buff *new_skb = ((void*)0);
 u64 *tx_desc_ptr = ((void*)0);
 int padding_size = 0;
 int headroom = 0;
 int tailroom = 0;
 u64 tx_desc = 0;
 u16 tci = 0;


 tx_desc |= skb->len & AQ_TX_DESC_LEN_MASK;


 tx_desc |= ((u64)(skb_shinfo(skb)->gso_size & AQ_TX_DESC_MSS_MASK)) <<
     AQ_TX_DESC_MSS_SHIFT;

 headroom = (skb->len + sizeof(tx_desc)) % 8;
 if (headroom != 0)
  padding_size = 8 - headroom;

 if (((skb->len + sizeof(tx_desc) + padding_size) % frame_size) == 0) {
  padding_size += 8;
  tx_desc |= AQ_TX_DESC_DROP_PADD;
 }


 if (vlan_get_tag(skb, &tci) >= 0) {
  tx_desc |= AQ_TX_DESC_VLAN;
  tx_desc |= ((u64)tci & AQ_TX_DESC_VLAN_MASK) <<
      AQ_TX_DESC_VLAN_SHIFT;
 }

 if (!dev->can_dma_sg && (dev->net->features & NETIF_F_SG) &&
     skb_linearize(skb))
  return ((void*)0);

 headroom = skb_headroom(skb);
 tailroom = skb_tailroom(skb);

 if (!(headroom >= sizeof(tx_desc) && tailroom >= padding_size)) {
  new_skb = skb_copy_expand(skb, sizeof(tx_desc),
       padding_size, flags);
  dev_kfree_skb_any(skb);
  skb = new_skb;
  if (!skb)
   return ((void*)0);
 }
 if (padding_size != 0)
  skb_put_zero(skb, padding_size);

 tx_desc_ptr = skb_push(skb, sizeof(tx_desc));
 *tx_desc_ptr = cpu_to_le64(tx_desc);

 usbnet_set_skb_tx_stats(skb, 1, 0);

 return skb;
}
