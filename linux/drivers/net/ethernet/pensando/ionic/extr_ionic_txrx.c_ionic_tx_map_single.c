
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_tx_stats {int dma_map_err; } ;
struct ionic_queue {int name; TYPE_2__* lif; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_3__* netdev; TYPE_1__* ionic; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_TO_DEVICE ;
 int dma_map_single (struct device*,void*,size_t,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int net_warn_ratelimited (char*,int ,int ) ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;

__attribute__((used)) static dma_addr_t ionic_tx_map_single(struct ionic_queue *q, void *data, size_t len)
{
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 struct device *dev = q->lif->ionic->dev;
 dma_addr_t dma_addr;

 dma_addr = dma_map_single(dev, data, len, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, dma_addr)) {
  net_warn_ratelimited("%s: DMA single map failed on %s!\n",
         q->lif->netdev->name, q->name);
  stats->dma_map_err++;
  return 0;
 }
 return dma_addr;
}
