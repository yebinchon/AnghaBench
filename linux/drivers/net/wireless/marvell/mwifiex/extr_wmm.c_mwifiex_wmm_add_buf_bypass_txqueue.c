
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwifiex_private {int bypass_txq; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;

void
mwifiex_wmm_add_buf_bypass_txqueue(struct mwifiex_private *priv,
       struct sk_buff *skb)
{
 skb_queue_tail(&priv->bypass_txq, skb);
}
