
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; } ;
struct cc2520_private {TYPE_1__* spi; int hw; int promiscuous; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int IEEE802154_MTU ;
 scalar_t__ cc2520_read_rxfifo (struct cc2520_private*,int*,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_dbg (int *,char*) ;
 int dev_vdbg (int *,char*,int,int) ;
 int ieee802154_is_valid_psdu_len (int) ;
 int ieee802154_rx_irqsafe (int ,struct sk_buff*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int cc2520_rx(struct cc2520_private *priv)
{
 u8 len = 0, lqi = 0, bytes = 1;
 struct sk_buff *skb;


 cc2520_read_rxfifo(priv, &len, bytes);

 if (!ieee802154_is_valid_psdu_len(len)) {



  dev_dbg(&priv->spi->dev, "corrupted frame received\n");
  len = IEEE802154_MTU;
 }

 skb = dev_alloc_skb(len);
 if (!skb)
  return -ENOMEM;

 if (cc2520_read_rxfifo(priv, skb_put(skb, len), len)) {
  dev_dbg(&priv->spi->dev, "frame reception failed\n");
  kfree_skb(skb);
  return -EINVAL;
 }






 if (!priv->promiscuous) {
  bool crc_ok;





  crc_ok = skb->data[len - 1] & BIT(7);


  if (!crc_ok) {
   dev_dbg(&priv->spi->dev, "CRC check failed\n");
   kfree_skb(skb);
   return -EINVAL;
  }
  lqi = skb->data[len - 1] & 0x7f;
  if (lqi < 50)
   lqi = 50;
  else if (lqi > 113)
   lqi = 113;
  lqi = (lqi - 50) * 4;
 }

 ieee802154_rx_irqsafe(priv->hw, skb, lqi);

 dev_vdbg(&priv->spi->dev, "RXFIFO: %x %x\n", len, lqi);

 return 0;
}
