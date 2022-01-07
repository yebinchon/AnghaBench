
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct net_device {int name; } ;
struct ionic_rx_stats {int dma_map_err; int alloc_err; } ;
struct ionic_queue {int name; struct ionic_lif* lif; } ;
struct ionic_lif {TYPE_1__* ionic; struct net_device* netdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device* dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int net_warn_ratelimited (char*,int ,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,unsigned int) ;
 struct ionic_rx_stats* q_to_rx_stats (struct ionic_queue*) ;

__attribute__((used)) static struct sk_buff *ionic_rx_skb_alloc(struct ionic_queue *q, unsigned int len,
       dma_addr_t *dma_addr)
{
 struct ionic_lif *lif = q->lif;
 struct ionic_rx_stats *stats;
 struct net_device *netdev;
 struct sk_buff *skb;
 struct device *dev;

 netdev = lif->netdev;
 dev = lif->ionic->dev;
 stats = q_to_rx_stats(q);
 skb = netdev_alloc_skb_ip_align(netdev, len);
 if (!skb) {
  net_warn_ratelimited("%s: SKB alloc failed on %s!\n",
         netdev->name, q->name);
  stats->alloc_err++;
  return ((void*)0);
 }

 *dma_addr = dma_map_single(dev, skb->data, len, DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, *dma_addr)) {
  dev_kfree_skb(skb);
  net_warn_ratelimited("%s: DMA single map failed on %s!\n",
         netdev->name, q->name);
  stats->dma_map_err++;
  return ((void*)0);
 }

 return skb;
}
