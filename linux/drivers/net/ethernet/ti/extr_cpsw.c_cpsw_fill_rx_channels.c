
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_pool {int dummy; } ;
struct page {int dummy; } ;
struct cpsw_priv {int ndev; struct cpsw_common* cpsw; } ;
struct cpsw_meta_xdp {int ch; int ndev; } ;
struct cpsw_common {int rx_ch_num; int rx_packet_max; TYPE_1__* rxv; struct page_pool** page_pool; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int ch; } ;


 scalar_t__ CPSW_HEADROOM ;
 int CPSW_XMETA_OFFSET ;
 int ENOMEM ;
 int cpdma_chan_get_rx_buf_num (int ) ;
 int cpdma_chan_idle_submit_mapped (int ,struct page*,scalar_t__,int ,int ) ;
 int cpsw_err (struct cpsw_priv*,int ,char*,...) ;
 int cpsw_info (struct cpsw_priv*,int ,char*,int,int) ;
 int ifup ;
 struct cpsw_meta_xdp* page_address (struct page*) ;
 struct page* page_pool_dev_alloc_pages (struct page_pool*) ;
 scalar_t__ page_pool_get_dma_addr (struct page*) ;
 int page_pool_recycle_direct (struct page_pool*,struct page*) ;

int cpsw_fill_rx_channels(struct cpsw_priv *priv)
{
 struct cpsw_common *cpsw = priv->cpsw;
 struct cpsw_meta_xdp *xmeta;
 struct page_pool *pool;
 struct page *page;
 int ch_buf_num;
 int ch, i, ret;
 dma_addr_t dma;

 for (ch = 0; ch < cpsw->rx_ch_num; ch++) {
  pool = cpsw->page_pool[ch];
  ch_buf_num = cpdma_chan_get_rx_buf_num(cpsw->rxv[ch].ch);
  for (i = 0; i < ch_buf_num; i++) {
   page = page_pool_dev_alloc_pages(pool);
   if (!page) {
    cpsw_err(priv, ifup, "allocate rx page err\n");
    return -ENOMEM;
   }

   xmeta = page_address(page) + CPSW_XMETA_OFFSET;
   xmeta->ndev = priv->ndev;
   xmeta->ch = ch;

   dma = page_pool_get_dma_addr(page) + CPSW_HEADROOM;
   ret = cpdma_chan_idle_submit_mapped(cpsw->rxv[ch].ch,
           page, dma,
           cpsw->rx_packet_max,
           0);
   if (ret < 0) {
    cpsw_err(priv, ifup,
      "cannot submit page to channel %d rx, error %d\n",
      ch, ret);
    page_pool_recycle_direct(pool, page);
    return ret;
   }
  }

  cpsw_info(priv, ifup, "ch %d rx, submitted %d descriptors\n",
     ch, ch_buf_num);
 }

 return 0;
}
