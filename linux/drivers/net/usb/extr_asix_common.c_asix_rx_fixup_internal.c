
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct asix_rx_fixup_info {int remaining; int header; int split_head; int * ax_skb; } ;
struct TYPE_4__ {int mtu; } ;


 int ETH_HLEN ;
 int VLAN_HLEN ;
 int get_unaligned_le16 (scalar_t__) ;
 void* get_unaligned_le32 (scalar_t__) ;
 int * netdev_alloc_skb_ip_align (TYPE_1__*,int) ;
 int netdev_dbg (TYPE_1__*,char*,int) ;
 int netdev_err (TYPE_1__*,char*,int,...) ;
 int reset_asix_rx_fixup_info (struct asix_rx_fixup_info*) ;
 int skb_put_data (int *,scalar_t__,int) ;
 int usbnet_skb_return (struct usbnet*,int *) ;

int asix_rx_fixup_internal(struct usbnet *dev, struct sk_buff *skb,
      struct asix_rx_fixup_info *rx)
{
 int offset = 0;
 u16 size;
 if (rx->remaining && (rx->remaining + sizeof(u32) <= skb->len)) {
  offset = ((rx->remaining + 1) & 0xfffe);
  rx->header = get_unaligned_le32(skb->data + offset);
  offset = 0;

  size = (u16)(rx->header & 0x7ff);
  if (size != ((~rx->header >> 16) & 0x7ff)) {
   netdev_err(dev->net, "asix_rx_fixup() Data Header synchronisation was lost, remaining %d\n",
       rx->remaining);
   reset_asix_rx_fixup_info(rx);
  }
 }

 while (offset + sizeof(u16) <= skb->len) {
  u16 copy_length;

  if (!rx->remaining) {
   if (skb->len - offset == sizeof(u16)) {
    rx->header = get_unaligned_le16(
      skb->data + offset);
    rx->split_head = 1;
    offset += sizeof(u16);
    break;
   }

   if (rx->split_head == 1) {
    rx->header |= (get_unaligned_le16(
      skb->data + offset) << 16);
    rx->split_head = 0;
    offset += sizeof(u16);
   } else {
    rx->header = get_unaligned_le32(skb->data +
        offset);
    offset += sizeof(u32);
   }


   size = (u16)(rx->header & 0x7ff);
   if (size != ((~rx->header >> 16) & 0x7ff)) {
    netdev_err(dev->net, "asix_rx_fixup() Bad Header Length 0x%x, offset %d\n",
        rx->header, offset);
    reset_asix_rx_fixup_info(rx);
    return 0;
   }
   if (size > dev->net->mtu + ETH_HLEN + VLAN_HLEN) {
    netdev_dbg(dev->net, "asix_rx_fixup() Bad RX Length %d\n",
        size);
    reset_asix_rx_fixup_info(rx);
    return 0;
   }






   rx->ax_skb = netdev_alloc_skb_ip_align(dev->net, size);

   rx->remaining = size;
  }

  if (rx->remaining > skb->len - offset) {
   copy_length = skb->len - offset;
   rx->remaining -= copy_length;
  } else {
   copy_length = rx->remaining;
   rx->remaining = 0;
  }

  if (rx->ax_skb) {
   skb_put_data(rx->ax_skb, skb->data + offset,
         copy_length);
   if (!rx->remaining) {
    usbnet_skb_return(dev, rx->ax_skb);
    rx->ax_skb = ((void*)0);
   }
  }

  offset += (copy_length + 1) & 0xfffe;
 }

 if (skb->len != offset) {
  netdev_err(dev->net, "asix_rx_fixup() Bad SKB Length %d, %d\n",
      skb->len, offset);
  reset_asix_rx_fixup_info(rx);
  return 0;
 }

 return 1;
}
