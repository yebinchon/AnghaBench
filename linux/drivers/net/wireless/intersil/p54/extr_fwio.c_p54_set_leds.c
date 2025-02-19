
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_led {void** delay; void** mask; void* flags; } ;
struct p54_common {int softled_state; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int P54_CONTROL_TYPE_LED ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 struct p54_led* skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_set_leds(struct p54_common *priv)
{
 struct sk_buff *skb;
 struct p54_led *led;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*led),
       P54_CONTROL_TYPE_LED, GFP_ATOMIC);
 if (unlikely(!skb))
  return -ENOMEM;

 led = skb_put(skb, sizeof(*led));
 led->flags = cpu_to_le16(0x0003);
 led->mask[0] = led->mask[1] = cpu_to_le16(priv->softled_state);
 led->delay[0] = cpu_to_le16(1);
 led->delay[1] = cpu_to_le16(0);
 p54_tx(priv, skb);
 return 0;
}
