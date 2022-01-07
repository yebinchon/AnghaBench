
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct p54_txcancel {int req_id; } ;
struct p54_common {scalar_t__ rx_start; scalar_t__ rx_end; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int P54_CONTROL_TYPE_TXCANCEL ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 scalar_t__ le32_to_cpu (int ) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 struct p54_txcancel* skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int p54_tx_cancel(struct p54_common *priv, __le32 req_id)
{
 struct sk_buff *skb;
 struct p54_txcancel *cancel;
 u32 _req_id = le32_to_cpu(req_id);

 if (unlikely(_req_id < priv->rx_start || _req_id > priv->rx_end))
  return -EINVAL;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*cancel),
       P54_CONTROL_TYPE_TXCANCEL, GFP_ATOMIC);
 if (unlikely(!skb))
  return -ENOMEM;

 cancel = skb_put(skb, sizeof(*cancel));
 cancel->req_id = req_id;
 p54_tx(priv, skb);
 return 0;
}
