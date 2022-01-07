
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_xbow_synth {int padding; void* freq; void* magic2; void* magic1; } ;
struct p54_common {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int P54_CONTROL_TYPE_XBOW_SYNTH_CFG ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 void* cpu_to_le16 (int) ;
 int memset (int ,int ,int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 struct p54_xbow_synth* skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_init_xbow_synth(struct p54_common *priv)
{
 struct sk_buff *skb;
 struct p54_xbow_synth *xbow;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*xbow),
       P54_CONTROL_TYPE_XBOW_SYNTH_CFG, GFP_KERNEL);
 if (unlikely(!skb))
  return -ENOMEM;

 xbow = skb_put(skb, sizeof(*xbow));
 xbow->magic1 = cpu_to_le16(0x1);
 xbow->magic2 = cpu_to_le16(0x2);
 xbow->freq = cpu_to_le16(5390);
 memset(xbow->padding, 0, sizeof(xbow->padding));
 p54_tx(priv, skb);
 return 0;
}
