
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct mvneta_rx_queue {int size; void** buf_virt_addr; struct mvneta_rx_desc* descs; } ;
struct mvneta_rx_desc {int buf_phys_addr; } ;
struct mvneta_port {TYPE_2__* dev; TYPE_3__* bm_priv; } ;
struct mvneta_bm_pool {int dummy; } ;
struct TYPE_6__ {struct mvneta_bm_pool* bm_pools; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 size_t MVNETA_RX_GET_BM_POOL_ID (struct mvneta_rx_desc*) ;
 int PAGE_SIZE ;
 int __free_page (void*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int mvneta_bm_pool_put_bp (TYPE_3__*,struct mvneta_bm_pool*,int ) ;
 int mvneta_rxq_busy_desc_num_get (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvneta_rxq_desc_num_update (struct mvneta_port*,struct mvneta_rx_queue*,int,int) ;
 struct mvneta_rx_desc* mvneta_rxq_next_desc_get (struct mvneta_rx_queue*) ;

__attribute__((used)) static void mvneta_rxq_drop_pkts(struct mvneta_port *pp,
     struct mvneta_rx_queue *rxq)
{
 int rx_done, i;

 rx_done = mvneta_rxq_busy_desc_num_get(pp, rxq);
 if (rx_done)
  mvneta_rxq_desc_num_update(pp, rxq, rx_done, rx_done);

 if (pp->bm_priv) {
  for (i = 0; i < rx_done; i++) {
   struct mvneta_rx_desc *rx_desc =
        mvneta_rxq_next_desc_get(rxq);
   u8 pool_id = MVNETA_RX_GET_BM_POOL_ID(rx_desc);
   struct mvneta_bm_pool *bm_pool;

   bm_pool = &pp->bm_priv->bm_pools[pool_id];

   mvneta_bm_pool_put_bp(pp->bm_priv, bm_pool,
           rx_desc->buf_phys_addr);
  }
  return;
 }

 for (i = 0; i < rxq->size; i++) {
  struct mvneta_rx_desc *rx_desc = rxq->descs + i;
  void *data = rxq->buf_virt_addr[i];
  if (!data || !(rx_desc->buf_phys_addr))
   continue;

  dma_unmap_page(pp->dev->dev.parent, rx_desc->buf_phys_addr,
          PAGE_SIZE, DMA_FROM_DEVICE);
  __free_page(data);
 }
}
