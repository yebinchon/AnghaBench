
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmmac_rx_queue {int page_pool; struct stmmac_rx_buffer* buf_pool; } ;
struct stmmac_rx_buffer {void* addr; int * page; int * sec_page; void* sec_addr; } ;
struct stmmac_priv {scalar_t__ dma_buf_sz; scalar_t__ sph; struct stmmac_rx_queue* rx_queue; } ;
struct dma_desc {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ BUF_SIZE_16KiB ;
 int ENOMEM ;
 void* page_pool_dev_alloc_pages (int ) ;
 void* page_pool_get_dma_addr (int *) ;
 int stmmac_init_desc3 (struct stmmac_priv*,struct dma_desc*) ;
 int stmmac_set_desc_addr (struct stmmac_priv*,struct dma_desc*,void*) ;
 int stmmac_set_desc_sec_addr (struct stmmac_priv*,struct dma_desc*,void*) ;

__attribute__((used)) static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
      int i, gfp_t flags, u32 queue)
{
 struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];

 buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
 if (!buf->page)
  return -ENOMEM;

 if (priv->sph) {
  buf->sec_page = page_pool_dev_alloc_pages(rx_q->page_pool);
  if (!buf->sec_page)
   return -ENOMEM;

  buf->sec_addr = page_pool_get_dma_addr(buf->sec_page);
  stmmac_set_desc_sec_addr(priv, p, buf->sec_addr);
 } else {
  buf->sec_page = ((void*)0);
 }

 buf->addr = page_pool_get_dma_addr(buf->page);
 stmmac_set_desc_addr(priv, p, buf->addr);
 if (priv->dma_buf_sz == BUF_SIZE_16KiB)
  stmmac_init_desc3(priv, p);

 return 0;
}
