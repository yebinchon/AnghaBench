
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct w5100_priv {int dummy; } ;
struct sk_buff {int protocol; int * data; } ;
struct TYPE_2__ {scalar_t__ rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 int S0_CR_RECV ;
 int W5100_S0_RX_RD (struct w5100_priv*) ;
 int W5100_S0_RX_RSR (struct w5100_priv*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ get_unaligned_be16 (int *) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int w5100_command (struct w5100_priv*,int ) ;
 scalar_t__ w5100_read16 (struct w5100_priv*,int ) ;
 int w5100_readbuf (struct w5100_priv*,scalar_t__,int *,scalar_t__) ;
 int w5100_write16 (struct w5100_priv*,int ,scalar_t__) ;

__attribute__((used)) static struct sk_buff *w5100_rx_skb(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);
 struct sk_buff *skb;
 u16 rx_len;
 u16 offset;
 u8 header[2];
 u16 rx_buf_len = w5100_read16(priv, W5100_S0_RX_RSR(priv));

 if (rx_buf_len == 0)
  return ((void*)0);

 offset = w5100_read16(priv, W5100_S0_RX_RD(priv));
 w5100_readbuf(priv, offset, header, 2);
 rx_len = get_unaligned_be16(header) - 2;

 skb = netdev_alloc_skb_ip_align(ndev, rx_len);
 if (unlikely(!skb)) {
  w5100_write16(priv, W5100_S0_RX_RD(priv), offset + rx_buf_len);
  w5100_command(priv, S0_CR_RECV);
  ndev->stats.rx_dropped++;
  return ((void*)0);
 }

 skb_put(skb, rx_len);
 w5100_readbuf(priv, offset + 2, skb->data, rx_len);
 w5100_write16(priv, W5100_S0_RX_RD(priv), offset + 2 + rx_len);
 w5100_command(priv, S0_CR_RECV);
 skb->protocol = eth_type_trans(skb, ndev);

 ndev->stats.rx_packets++;
 ndev->stats.rx_bytes += rx_len;

 return skb;
}
