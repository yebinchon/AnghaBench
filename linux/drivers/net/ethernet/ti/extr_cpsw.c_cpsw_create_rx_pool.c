
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_pool {int dummy; } ;
struct cpsw_common {struct page_pool** page_pool; TYPE_1__* rxv; } ;
struct TYPE_2__ {int ch; } ;


 scalar_t__ IS_ERR (struct page_pool*) ;
 int PTR_ERR (struct page_pool*) ;
 int cpdma_chan_get_rx_buf_num (int ) ;
 struct page_pool* cpsw_create_page_pool (struct cpsw_common*,int) ;

__attribute__((used)) static int cpsw_create_rx_pool(struct cpsw_common *cpsw, int ch)
{
 struct page_pool *pool;
 int ret = 0, pool_size;

 pool_size = cpdma_chan_get_rx_buf_num(cpsw->rxv[ch].ch);
 pool = cpsw_create_page_pool(cpsw, pool_size);
 if (IS_ERR(pool))
  ret = PTR_ERR(pool);
 else
  cpsw->page_pool[ch] = pool;

 return ret;
}
