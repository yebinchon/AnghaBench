
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvpp2_port {TYPE_2__* dev; } ;
struct mvpp2_bm_pool {int pkt_size; } ;
typedef int phys_addr_t ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 int MVPP2_RX_BUF_SIZE (int ) ;
 int dma_map_single (int ,void*,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 void* mvpp2_frag_alloc (struct mvpp2_bm_pool*) ;
 int mvpp2_frag_free (struct mvpp2_bm_pool*,void*) ;
 scalar_t__ unlikely (int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static void *mvpp2_buf_alloc(struct mvpp2_port *port,
        struct mvpp2_bm_pool *bm_pool,
        dma_addr_t *buf_dma_addr,
        phys_addr_t *buf_phys_addr,
        gfp_t gfp_mask)
{
 dma_addr_t dma_addr;
 void *data;

 data = mvpp2_frag_alloc(bm_pool);
 if (!data)
  return ((void*)0);

 dma_addr = dma_map_single(port->dev->dev.parent, data,
      MVPP2_RX_BUF_SIZE(bm_pool->pkt_size),
      DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(port->dev->dev.parent, dma_addr))) {
  mvpp2_frag_free(bm_pool, data);
  return ((void*)0);
 }
 *buf_dma_addr = dma_addr;
 *buf_phys_addr = virt_to_phys(data);

 return data;
}
