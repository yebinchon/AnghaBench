
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int dummy; } ;
struct mvpp2_bm_pool {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int mvpp2_bm_pool_put (struct mvpp2_port*,int,int ,int ) ;
 void* mvpp2_buf_alloc (struct mvpp2_port*,struct mvpp2_bm_pool*,int *,int *,int ) ;

__attribute__((used)) static int mvpp2_rx_refill(struct mvpp2_port *port,
      struct mvpp2_bm_pool *bm_pool, int pool)
{
 dma_addr_t dma_addr;
 phys_addr_t phys_addr;
 void *buf;


 buf = mvpp2_buf_alloc(port, bm_pool, &dma_addr, &phys_addr,
         GFP_ATOMIC);
 if (!buf)
  return -ENOMEM;

 mvpp2_bm_pool_put(port, pool, dma_addr, phys_addr);

 return 0;
}
