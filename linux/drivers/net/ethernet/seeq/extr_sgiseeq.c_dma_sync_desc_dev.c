
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgiseeq_rx_desc {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 int dma_cache_sync (int ,void*,int,int ) ;

__attribute__((used)) static inline void dma_sync_desc_dev(struct net_device *dev, void *addr)
{
 dma_cache_sync(dev->dev.parent, addr, sizeof(struct sgiseeq_rx_desc),
         DMA_TO_DEVICE);
}
