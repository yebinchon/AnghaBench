
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmmac_rx_queue {int page_pool; struct stmmac_rx_buffer* buf_pool; } ;
struct stmmac_rx_buffer {int * sec_page; int * page; } ;
struct stmmac_priv {struct stmmac_rx_queue* rx_queue; } ;


 int page_pool_put_page (int ,int *,int) ;

__attribute__((used)) static void stmmac_free_rx_buffer(struct stmmac_priv *priv, u32 queue, int i)
{
 struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];

 if (buf->page)
  page_pool_put_page(rx_q->page_pool, buf->page, 0);
 buf->page = ((void*)0);

 if (buf->sec_page)
  page_pool_put_page(rx_q->page_pool, buf->sec_page, 0);
 buf->sec_page = ((void*)0);
}
