
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct emac_ring_header {scalar_t__ used; scalar_t__ size; scalar_t__ dma_addr; int * v_addr; } ;
struct emac_adapter {TYPE_2__* netdev; struct emac_ring_header ring_header; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dma_free_coherent (struct device*,scalar_t__,int *,scalar_t__) ;
 int emac_rx_q_bufs_free (struct emac_adapter*) ;
 int emac_tx_q_bufs_free (struct emac_adapter*) ;

void emac_mac_rx_tx_rings_free_all(struct emac_adapter *adpt)
{
 struct emac_ring_header *ring_header = &adpt->ring_header;
 struct device *dev = adpt->netdev->dev.parent;

 emac_tx_q_bufs_free(adpt);
 emac_rx_q_bufs_free(adpt);

 dma_free_coherent(dev, ring_header->size,
     ring_header->v_addr, ring_header->dma_addr);

 ring_header->v_addr = ((void*)0);
 ring_header->dma_addr = 0;
 ring_header->size = 0;
 ring_header->used = 0;
}
