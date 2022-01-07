
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; unsigned char* data; int truesize; } ;
struct lan78xx_net {TYPE_1__* net; } ;
typedef int rx_cmd_c ;
typedef int rx_cmd_b ;
typedef int rx_cmd_a ;
struct TYPE_3__ {scalar_t__ hard_header_len; } ;


 int GFP_ATOMIC ;
 int RXW_PADDING ;
 int RX_CMD_A_LEN_MASK_ ;
 int RX_CMD_A_RED_ ;
 int get_unaligned_le16 (unsigned char*) ;
 int get_unaligned_le32 (unsigned char*) ;
 int lan78xx_rx_csum_offload (struct lan78xx_net*,struct sk_buff*,int,int) ;
 int lan78xx_rx_vlan_offload (struct lan78xx_net*,struct sk_buff*,int,int) ;
 int lan78xx_skb_return (struct lan78xx_net*,struct sk_buff*) ;
 int netdev_warn (TYPE_1__*,char*) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_1__*,char*,int) ;
 int rx_err ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lan78xx_rx(struct lan78xx_net *dev, struct sk_buff *skb)
{
 if (skb->len < dev->net->hard_header_len)
  return 0;

 while (skb->len > 0) {
  u32 rx_cmd_a, rx_cmd_b, align_count, size;
  u16 rx_cmd_c;
  struct sk_buff *skb2;
  unsigned char *packet;

  rx_cmd_a = get_unaligned_le32(skb->data);
  skb_pull(skb, sizeof(rx_cmd_a));

  rx_cmd_b = get_unaligned_le32(skb->data);
  skb_pull(skb, sizeof(rx_cmd_b));

  rx_cmd_c = get_unaligned_le16(skb->data);
  skb_pull(skb, sizeof(rx_cmd_c));

  packet = skb->data;


  size = (rx_cmd_a & RX_CMD_A_LEN_MASK_);
  align_count = (4 - ((size + RXW_PADDING) % 4)) % 4;

  if (unlikely(rx_cmd_a & RX_CMD_A_RED_)) {
   netif_dbg(dev, rx_err, dev->net,
      "Error rx_cmd_a=0x%08x", rx_cmd_a);
  } else {

   if (skb->len == size) {
    lan78xx_rx_csum_offload(dev, skb,
       rx_cmd_a, rx_cmd_b);
    lan78xx_rx_vlan_offload(dev, skb,
       rx_cmd_a, rx_cmd_b);

    skb_trim(skb, skb->len - 4);
    skb->truesize = size + sizeof(struct sk_buff);

    return 1;
   }

   skb2 = skb_clone(skb, GFP_ATOMIC);
   if (unlikely(!skb2)) {
    netdev_warn(dev->net, "Error allocating skb");
    return 0;
   }

   skb2->len = size;
   skb2->data = packet;
   skb_set_tail_pointer(skb2, size);

   lan78xx_rx_csum_offload(dev, skb2, rx_cmd_a, rx_cmd_b);
   lan78xx_rx_vlan_offload(dev, skb2, rx_cmd_a, rx_cmd_b);

   skb_trim(skb2, skb2->len - 4);
   skb2->truesize = size + sizeof(struct sk_buff);

   lan78xx_skb_return(dev, skb2);
  }

  skb_pull(skb, size);


  if (skb->len)
   skb_pull(skb, align_count);
 }

 return 1;
}
