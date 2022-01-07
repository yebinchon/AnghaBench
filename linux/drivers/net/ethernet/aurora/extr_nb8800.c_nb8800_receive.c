
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct page {int dummy; } ;
struct TYPE_7__ {int rx_dropped; } ;
struct net_device {int dev; TYPE_3__ stats; } ;
struct TYPE_6__ {int s_addr; } ;
struct nb8800_rx_desc {TYPE_2__ desc; } ;
struct nb8800_priv {int napi; TYPE_1__* rx_bufs; struct nb8800_rx_desc* rx_descs; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int nr_frags; } ;
struct TYPE_5__ {int offset; struct page* page; } ;


 int DMA_FROM_DEVICE ;
 int RX_BUF_SIZE ;
 unsigned int RX_COPYBREAK ;
 unsigned int RX_COPYHDR ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_sync_single_for_cpu (int *,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (int *,int ,unsigned int,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int nb8800_alloc_rx (struct net_device*,unsigned int,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 void* page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,unsigned int,int ) ;
 int skb_put_data (struct sk_buff*,void*,unsigned int) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void nb8800_receive(struct net_device *dev, unsigned int i,
      unsigned int len)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct nb8800_rx_desc *rxd = &priv->rx_descs[i];
 struct page *page = priv->rx_bufs[i].page;
 int offset = priv->rx_bufs[i].offset;
 void *data = page_address(page) + offset;
 dma_addr_t dma = rxd->desc.s_addr;
 struct sk_buff *skb;
 unsigned int size;
 int err;

 size = len <= RX_COPYBREAK ? len : RX_COPYHDR;

 skb = napi_alloc_skb(&priv->napi, size);
 if (!skb) {
  netdev_err(dev, "rx skb allocation failed\n");
  dev->stats.rx_dropped++;
  return;
 }

 if (len <= RX_COPYBREAK) {
  dma_sync_single_for_cpu(&dev->dev, dma, len, DMA_FROM_DEVICE);
  skb_put_data(skb, data, len);
  dma_sync_single_for_device(&dev->dev, dma, len,
        DMA_FROM_DEVICE);
 } else {
  err = nb8800_alloc_rx(dev, i, 1);
  if (err) {
   netdev_err(dev, "rx buffer allocation failed\n");
   dev->stats.rx_dropped++;
   dev_kfree_skb(skb);
   return;
  }

  dma_unmap_page(&dev->dev, dma, RX_BUF_SIZE, DMA_FROM_DEVICE);
  skb_put_data(skb, data, RX_COPYHDR);
  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
    offset + RX_COPYHDR, len - RX_COPYHDR,
    RX_BUF_SIZE);
 }

 skb->protocol = eth_type_trans(skb, dev);
 napi_gro_receive(&priv->napi, skb);
}
