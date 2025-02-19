
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct p54_edcf {int slottime; int sifs; int eofpad; int queue; int mapping; scalar_t__ flags; void* frameburst; void* round_trip_delay; } ;
struct p54_common {int coverage_class; int qos_params; scalar_t__ use_short_slot; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int P54_CONTROL_TYPE_DCFINIT ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 struct p54_edcf* skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_set_edcf(struct p54_common *priv)
{
 struct sk_buff *skb;
 struct p54_edcf *edcf;
 u8 rtd;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*edcf),
       P54_CONTROL_TYPE_DCFINIT, GFP_ATOMIC);
 if (unlikely(!skb))
  return -ENOMEM;

 edcf = skb_put(skb, sizeof(*edcf));
 if (priv->use_short_slot) {
  edcf->slottime = 9;
  edcf->sifs = 0x10;
  edcf->eofpad = 0x00;
 } else {
  edcf->slottime = 20;
  edcf->sifs = 0x0a;
  edcf->eofpad = 0x06;
 }




 rtd = 3 * priv->coverage_class;
 edcf->slottime += rtd;
 edcf->round_trip_delay = cpu_to_le16(rtd);

 edcf->frameburst = cpu_to_le16(0);
 edcf->flags = 0;
 memset(edcf->mapping, 0, sizeof(edcf->mapping));
 memcpy(edcf->queue, priv->qos_params, sizeof(edcf->queue));
 p54_tx(priv, skb);
 return 0;
}
