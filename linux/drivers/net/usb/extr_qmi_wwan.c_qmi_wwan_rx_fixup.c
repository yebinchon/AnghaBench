
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; int data; } ;
struct sk_buff {scalar_t__ len; int* data; void* protocol; TYPE_1__* dev; } ;
struct qmi_wwan_state {int flags; } ;
typedef void* __be16 ;
struct TYPE_4__ {int h_dest; int h_source; void* h_proto; } ;
struct TYPE_3__ {scalar_t__ hard_header_len; int dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int QMI_WWAN_FLAG_MUX ;
 int QMI_WWAN_FLAG_RAWIP ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int eth_zero_addr (int ) ;
 void* htons (int ) ;
 int is_multicast_ether_addr (int*) ;
 int memcpy (int ,int ,int ) ;
 int qmimux_rx_fixup (struct usbnet*,struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int qmi_wwan_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct qmi_wwan_state *info = (void *)&dev->data;
 bool rawip = info->flags & QMI_WWAN_FLAG_RAWIP;
 __be16 proto;


 if (skb->len < dev->net->hard_header_len)
  return 0;

 if (info->flags & QMI_WWAN_FLAG_MUX)
  return qmimux_rx_fixup(dev, skb);

 switch (skb->data[0] & 0xf0) {
 case 0x40:
  proto = htons(ETH_P_IP);
  break;
 case 0x60:
  proto = htons(ETH_P_IPV6);
  break;
 case 0x00:
  if (rawip)
   return 0;
  if (is_multicast_ether_addr(skb->data))
   return 1;

  skb_reset_mac_header(skb);
  goto fix_dest;
 default:
  if (rawip)
   return 0;

  return 1;
 }
 if (rawip) {
  skb_reset_mac_header(skb);
  skb->dev = dev->net;
  skb->protocol = proto;
  return 1;
 }

 if (skb_headroom(skb) < ETH_HLEN)
  return 0;
 skb_push(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 eth_hdr(skb)->h_proto = proto;
 eth_zero_addr(eth_hdr(skb)->h_source);
fix_dest:
 memcpy(eth_hdr(skb)->h_dest, dev->net->dev_addr, ETH_ALEN);
 return 1;
}
