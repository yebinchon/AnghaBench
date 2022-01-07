
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct enet_cb {int dummy; } ;
struct bcmgenet_priv {int num_rx_bds; TYPE_1__* pdev; struct enet_cb* rx_cbs; } ;
struct TYPE_2__ {int dev; } ;


 struct sk_buff* bcmgenet_free_rx_cb (int *,struct enet_cb*) ;
 int dev_consume_skb_any (struct sk_buff*) ;

__attribute__((used)) static void bcmgenet_free_rx_buffers(struct bcmgenet_priv *priv)
{
 struct sk_buff *skb;
 struct enet_cb *cb;
 int i;

 for (i = 0; i < priv->num_rx_bds; i++) {
  cb = &priv->rx_cbs[i];

  skb = bcmgenet_free_rx_cb(&priv->pdev->dev, cb);
  if (skb)
   dev_consume_skb_any(skb);
 }
}
