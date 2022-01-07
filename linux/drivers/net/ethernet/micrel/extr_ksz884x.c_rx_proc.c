
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_len; } ;
union desc_stat {TYPE_1__ rx; } ;
struct sk_buff {int protocol; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct ksz_hw {int rx_cfg; } ;
struct ksz_dma_buf {TYPE_2__* skb; int dma; } ;
struct ksz_desc {int dummy; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int pdev; } ;
struct TYPE_5__ {int data; } ;


 struct ksz_dma_buf* DMA_BUFFER (struct ksz_desc*) ;
 int DMA_RX_CSUM_TCP ;
 int DMA_RX_CSUM_UDP ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int csum_verified (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int skb_put_data (struct sk_buff*,int ,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline int rx_proc(struct net_device *dev, struct ksz_hw* hw,
 struct ksz_desc *desc, union desc_stat status)
{
 int packet_len;
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_dma_buf *dma_buf;
 struct sk_buff *skb;
 int rx_status;


 packet_len = status.rx.frame_len - 4;

 dma_buf = DMA_BUFFER(desc);
 pci_dma_sync_single_for_cpu(
  hw_priv->pdev, dma_buf->dma, packet_len + 4,
  PCI_DMA_FROMDEVICE);

 do {

  skb = netdev_alloc_skb(dev, packet_len + 2);
  if (!skb) {
   dev->stats.rx_dropped++;
   return -ENOMEM;
  }





  skb_reserve(skb, 2);

  skb_put_data(skb, dma_buf->skb->data, packet_len);
 } while (0);

 skb->protocol = eth_type_trans(skb, dev);

 if (hw->rx_cfg & (DMA_RX_CSUM_UDP | DMA_RX_CSUM_TCP))
  csum_verified(skb);


 dev->stats.rx_packets++;
 dev->stats.rx_bytes += packet_len;


 rx_status = netif_rx(skb);

 return 0;
}
