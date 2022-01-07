
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int num_sgs; int sg; int transfer_buffer; int transfer_buffer_length; } ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int sg_en; } ;
struct mt76_dev {TYPE_1__ usb; } ;


 int ENOMEM ;
 int MT_TX_SG_MAX_SIZE ;
 int sg_init_table (int ,int ) ;
 int skb_to_sgvec (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int
mt76u_tx_setup_buffers(struct mt76_dev *dev, struct sk_buff *skb,
         struct urb *urb)
{
 urb->transfer_buffer_length = skb->len;

 if (!dev->usb.sg_en) {
  urb->transfer_buffer = skb->data;
  return 0;
 }

 sg_init_table(urb->sg, MT_TX_SG_MAX_SIZE);
 urb->num_sgs = skb_to_sgvec(skb, urb->sg, 0, skb->len);
 if (!urb->num_sgs)
  return -ENOMEM;

 return urb->num_sgs;
}
