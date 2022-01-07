
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct gl_packet {int * packet_data; int packet_length; } ;
struct gl_header {struct gl_packet packets; int packet_count; } ;
struct TYPE_2__ {scalar_t__ hard_header_len; } ;


 int GFP_ATOMIC ;
 int GL_MAX_PACKET_LEN ;
 int GL_MAX_TRANSMIT_PACKETS ;
 struct sk_buff* alloc_skb (int,int ) ;
 int le32_to_cpu (int ) ;
 int netdev_dbg (TYPE_1__*,char*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int genelink_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct gl_header *header;
 struct gl_packet *packet;
 struct sk_buff *gl_skb;
 u32 size;
 u32 count;


 if (skb->len < dev->net->hard_header_len)
  return 0;

 header = (struct gl_header *) skb->data;


 count = le32_to_cpu(header->packet_count);
 if (count > GL_MAX_TRANSMIT_PACKETS) {
  netdev_dbg(dev->net,
      "genelink: invalid received packet count %u\n",
      count);
  return 0;
 }


 packet = &header->packets;


 skb_pull(skb, 4);

 while (count > 1) {

  size = le32_to_cpu(packet->packet_length);


  if (size > GL_MAX_PACKET_LEN) {
   netdev_dbg(dev->net, "genelink: invalid rx length %d\n",
       size);
   return 0;
  }


  gl_skb = alloc_skb(size, GFP_ATOMIC);
  if (gl_skb) {


   skb_put_data(gl_skb, packet->packet_data, size);
   usbnet_skb_return(dev, gl_skb);
  }


  packet = (struct gl_packet *)&packet->packet_data[size];
  count--;


  skb_pull(skb, size + 4);
 }


 skb_pull(skb, 4);

 if (skb->len > GL_MAX_PACKET_LEN) {
  netdev_dbg(dev->net, "genelink: invalid rx length %d\n",
      skb->len);
  return 0;
 }
 return 1;
}
