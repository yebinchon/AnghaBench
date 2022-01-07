
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_tx_stats {int dma_map_err; } ;
struct ionic_queue {int name; TYPE_3__* lif; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {TYPE_2__* netdev; TYPE_1__* ionic; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int net_warn_ratelimited (char*,int ,int ) ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;
 int skb_frag_dma_map (struct device*,int const*,size_t,size_t,int ) ;

__attribute__((used)) static dma_addr_t ionic_tx_map_frag(struct ionic_queue *q, const skb_frag_t *frag,
        size_t offset, size_t len)
{
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 struct device *dev = q->lif->ionic->dev;
 dma_addr_t dma_addr;

 dma_addr = skb_frag_dma_map(dev, frag, offset, len, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, dma_addr)) {
  net_warn_ratelimited("%s: DMA frag map failed on %s!\n",
         q->lif->netdev->name, q->name);
  stats->dma_map_err++;
 }
 return dma_addr;
}
