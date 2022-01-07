
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dt; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_6__ {TYPE_2__ data; TYPE_1__ header; } ;
typedef TYPE_3__ tx_packet ;
struct sk_buff {int len; } ;
struct meth_private {size_t tx_write; TYPE_3__* tx_ring; } ;


 int ETH_ZLEN ;
 int METH_TX_CMD_INT_EN ;
 int memset (int,int ,int) ;
 int skb_copy_from_linear_data (struct sk_buff*,int,int) ;

__attribute__((used)) static void meth_tx_short_prepare(struct meth_private *priv,
      struct sk_buff *skb)
{
 tx_packet *desc = &priv->tx_ring[priv->tx_write];
 int len = (skb->len < ETH_ZLEN) ? ETH_ZLEN : skb->len;

 desc->header.raw = METH_TX_CMD_INT_EN | (len-1) | ((128-len) << 16);

 skb_copy_from_linear_data(skb, desc->data.dt + (120 - len), skb->len);
 if (skb->len < len)
  memset(desc->data.dt + 120 - len + skb->len, 0, len-skb->len);
}
