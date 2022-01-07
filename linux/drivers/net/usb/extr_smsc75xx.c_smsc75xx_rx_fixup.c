
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_2__* net; } ;
struct sk_buff {scalar_t__ len; unsigned char* data; int truesize; } ;
struct TYPE_4__ {int rx_frame_errors; int rx_crc_errors; int rx_dropped; int rx_errors; } ;
struct TYPE_5__ {scalar_t__ hard_header_len; TYPE_1__ stats; } ;


 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int MAX_SINGLE_PACKET_SIZE ;
 int RXW_PADDING ;
 int RX_CMD_A_FCS ;
 int RX_CMD_A_LEN ;
 int RX_CMD_A_LONG ;
 int RX_CMD_A_RED ;
 int RX_CMD_A_RUNT ;
 int get_unaligned_le32 (unsigned char*) ;
 int netdev_warn (TYPE_2__*,char*) ;
 int netif_dbg (struct usbnet*,int ,TYPE_2__*,char*,int) ;
 int rx_err ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 int smsc75xx_rx_csum_offload (struct usbnet*,struct sk_buff*,int,int) ;
 scalar_t__ unlikely (int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int smsc75xx_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{

 if (skb->len < dev->net->hard_header_len)
  return 0;

 while (skb->len > 0) {
  u32 rx_cmd_a, rx_cmd_b, align_count, size;
  struct sk_buff *ax_skb;
  unsigned char *packet;

  rx_cmd_a = get_unaligned_le32(skb->data);
  skb_pull(skb, 4);

  rx_cmd_b = get_unaligned_le32(skb->data);
  skb_pull(skb, 4 + RXW_PADDING);

  packet = skb->data;


  size = (rx_cmd_a & RX_CMD_A_LEN) - RXW_PADDING;
  align_count = (4 - ((size + RXW_PADDING) % 4)) % 4;

  if (unlikely(rx_cmd_a & RX_CMD_A_RED)) {
   netif_dbg(dev, rx_err, dev->net,
      "Error rx_cmd_a=0x%08x\n", rx_cmd_a);
   dev->net->stats.rx_errors++;
   dev->net->stats.rx_dropped++;

   if (rx_cmd_a & RX_CMD_A_FCS)
    dev->net->stats.rx_crc_errors++;
   else if (rx_cmd_a & (RX_CMD_A_LONG | RX_CMD_A_RUNT))
    dev->net->stats.rx_frame_errors++;
  } else {

   if (unlikely(size > (MAX_SINGLE_PACKET_SIZE + ETH_HLEN + 12))) {
    netif_dbg(dev, rx_err, dev->net,
       "size err rx_cmd_a=0x%08x\n",
       rx_cmd_a);
    return 0;
   }


   if (skb->len == size) {
    smsc75xx_rx_csum_offload(dev, skb, rx_cmd_a,
     rx_cmd_b);

    skb_trim(skb, skb->len - 4);
    skb->truesize = size + sizeof(struct sk_buff);

    return 1;
   }

   ax_skb = skb_clone(skb, GFP_ATOMIC);
   if (unlikely(!ax_skb)) {
    netdev_warn(dev->net, "Error allocating skb\n");
    return 0;
   }

   ax_skb->len = size;
   ax_skb->data = packet;
   skb_set_tail_pointer(ax_skb, size);

   smsc75xx_rx_csum_offload(dev, ax_skb, rx_cmd_a,
    rx_cmd_b);

   skb_trim(ax_skb, ax_skb->len - 4);
   ax_skb->truesize = size + sizeof(struct sk_buff);

   usbnet_skb_return(dev, ax_skb);
  }

  skb_pull(skb, size);


  if (skb->len)
   skb_pull(skb, align_count);
 }

 return 1;
}
