
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vl600_state {struct sk_buff* current_rx_buf; } ;
struct vl600_pkt_hdr {int len; } ;
struct vl600_frame_hdr {int pkt_cnt; int len; int magic; } ;
struct usbnet {TYPE_2__* net; struct vl600_state* driver_priv; } ;
struct sk_buff {int* data; int len; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_3__ {int rx_errors; int rx_length_errors; } ;
struct TYPE_4__ {int* dev_addr; TYPE_1__ stats; } ;


 int ETH_ALEN ;
 scalar_t__ ETH_P_ARP ;
 int ETH_P_IPV6 ;
 int GFP_ATOMIC ;
 scalar_t__ be16_to_cpup (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_zero_addr (int ) ;
 int htons (int ) ;
 int ifup ;
 int le32_to_cpup (int *) ;
 int memcpy (int ,int*,int ) ;
 int netif_err (struct usbnet*,int ,TYPE_2__*,char*) ;
 int ntohl (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int vl600_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct vl600_frame_hdr *frame;
 struct vl600_pkt_hdr *packet;
 struct ethhdr *ethhdr;
 int packet_len, count;
 struct sk_buff *buf = skb;
 struct sk_buff *clone;
 struct vl600_state *s = dev->driver_priv;
 if (s->current_rx_buf) {
  frame = (struct vl600_frame_hdr *) s->current_rx_buf->data;
  if (skb->len + s->current_rx_buf->len >
    le32_to_cpup(&frame->len)) {
   netif_err(dev, ifup, dev->net, "Fragment too long\n");
   dev->net->stats.rx_length_errors++;
   goto error;
  }

  buf = s->current_rx_buf;
  skb_put_data(buf, skb->data, skb->len);
 } else if (skb->len < 4) {
  netif_err(dev, ifup, dev->net, "Frame too short\n");
  dev->net->stats.rx_length_errors++;
  goto error;
 }

 frame = (struct vl600_frame_hdr *) buf->data;


 if (ntohl(frame->magic) != 0x53544448 &&
   ntohl(frame->magic) != 0x44544d48)
  goto error;

 if (buf->len < sizeof(*frame) ||
   buf->len != le32_to_cpup(&frame->len)) {

  if (s->current_rx_buf)
   return 0;

  s->current_rx_buf = skb_copy_expand(skb, 0,
    le32_to_cpup(&frame->len), GFP_ATOMIC);
  if (!s->current_rx_buf)
   dev->net->stats.rx_errors++;

  return 0;
 }

 count = le32_to_cpup(&frame->pkt_cnt);

 skb_pull(buf, sizeof(*frame));

 while (count--) {
  if (buf->len < sizeof(*packet)) {
   netif_err(dev, ifup, dev->net, "Packet too short\n");
   goto error;
  }

  packet = (struct vl600_pkt_hdr *) buf->data;
  packet_len = sizeof(*packet) + le32_to_cpup(&packet->len);
  if (packet_len > buf->len) {
   netif_err(dev, ifup, dev->net,
     "Bad packet length stored in header\n");
   goto error;
  }






  ethhdr = (struct ethhdr *) skb->data;
  if (be16_to_cpup(&ethhdr->h_proto) == ETH_P_ARP &&
    buf->len > 0x26) {

   memcpy(ethhdr->h_source,
     &buf->data[sizeof(*ethhdr) + 0x8],
     ETH_ALEN);
   memcpy(ethhdr->h_dest,
     &buf->data[sizeof(*ethhdr) + 0x12],
     ETH_ALEN);
  } else {
   eth_zero_addr(ethhdr->h_source);
   memcpy(ethhdr->h_dest, dev->net->dev_addr, ETH_ALEN);






   if ((buf->data[sizeof(*ethhdr)] & 0xf0) == 0x60)
    ethhdr->h_proto = htons(ETH_P_IPV6);
  }

  if (count) {

   clone = skb_clone(buf, GFP_ATOMIC);
   if (!clone)
    goto error;

   skb_trim(clone, packet_len);
   usbnet_skb_return(dev, clone);

   skb_pull(buf, (packet_len + 3) & ~3);
  } else {
   skb_trim(buf, packet_len);

   if (s->current_rx_buf) {
    usbnet_skb_return(dev, buf);
    s->current_rx_buf = ((void*)0);
    return 0;
   }

   return 1;
  }
 }

error:
 if (s->current_rx_buf) {
  dev_kfree_skb_any(s->current_rx_buf);
  s->current_rx_buf = ((void*)0);
 }
 dev->net->stats.rx_errors++;
 return 0;
}
