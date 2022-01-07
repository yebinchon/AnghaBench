
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int dummy; } ;
struct skb_shared_info {int dummy; } ;
struct net_device {int dummy; } ;
struct hip04_priv {int * rx_buf; scalar_t__ rx_buf_size; int tx_desc; int tx_desc_dma; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RX_BUF_SIZE ;
 int RX_DESC_NUM ;
 scalar_t__ SKB_DATA_ALIGN (int) ;
 int TX_DESC_NUM ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int netdev_alloc_frag (scalar_t__) ;
 struct hip04_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hip04_alloc_ring(struct net_device *ndev, struct device *d)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 int i;

 priv->tx_desc = dma_alloc_coherent(d,
        TX_DESC_NUM * sizeof(struct tx_desc),
        &priv->tx_desc_dma, GFP_KERNEL);
 if (!priv->tx_desc)
  return -ENOMEM;

 priv->rx_buf_size = RX_BUF_SIZE +
       SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 for (i = 0; i < RX_DESC_NUM; i++) {
  priv->rx_buf[i] = netdev_alloc_frag(priv->rx_buf_size);
  if (!priv->rx_buf[i])
   return -ENOMEM;
 }

 return 0;
}
