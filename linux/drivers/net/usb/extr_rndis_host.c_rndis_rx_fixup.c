
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usbnet {TYPE_2__* net; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rndis_data_hdr {int msg_type; int data_len; int data_offset; int msg_len; } ;
struct TYPE_3__ {int rx_frame_errors; } ;
struct TYPE_4__ {scalar_t__ hard_header_len; TYPE_1__ stats; } ;


 int GFP_ATOMIC ;
 scalar_t__ RNDIS_MSG_PACKET ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int netdev_dbg (TYPE_2__*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

int rndis_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{

 if (skb->len < dev->net->hard_header_len)
  return 0;


 while (likely(skb->len)) {
  struct rndis_data_hdr *hdr = (void *)skb->data;
  struct sk_buff *skb2;
  u32 msg_type, msg_len, data_offset, data_len;

  msg_type = le32_to_cpu(hdr->msg_type);
  msg_len = le32_to_cpu(hdr->msg_len);
  data_offset = le32_to_cpu(hdr->data_offset);
  data_len = le32_to_cpu(hdr->data_len);


  if (unlikely(msg_type != RNDIS_MSG_PACKET || skb->len < msg_len
    || (data_offset + data_len + 8) > msg_len)) {
   dev->net->stats.rx_frame_errors++;
   netdev_dbg(dev->net, "bad rndis message %d/%d/%d/%d, len %d\n",
       le32_to_cpu(hdr->msg_type),
       msg_len, data_offset, data_len, skb->len);
   return 0;
  }
  skb_pull(skb, 8 + data_offset);


  if (likely((data_len - skb->len) <= sizeof *hdr)) {
   skb_trim(skb, data_len);
   break;
  }


  skb2 = skb_clone(skb, GFP_ATOMIC);
  if (unlikely(!skb2))
   break;
  skb_pull(skb, msg_len - sizeof *hdr);
  skb_trim(skb2, data_len);
  usbnet_skb_return(dev, skb2);
 }


 return 1;
}
