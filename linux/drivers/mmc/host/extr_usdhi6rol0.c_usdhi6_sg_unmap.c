
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct page* page; scalar_t__ mapped; } ;
struct TYPE_5__ {struct page* page; scalar_t__ mapped; } ;
struct usdhi6_host {size_t head_len; size_t page_idx; TYPE_3__ pg; TYPE_2__ head_pg; int bounce_buf; struct scatterlist* sg; TYPE_1__* mrq; } ;
struct scatterlist {size_t offset; } ;
struct page {int dummy; } ;
struct mmc_data {int sg_len; int flags; size_t blksz; int error; struct scatterlist* sg; } ;
struct TYPE_4__ {struct mmc_data* data; } ;


 int MMC_DATA_READ ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int flush_dcache_page (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (scalar_t__,int ,size_t) ;
 size_t sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void usdhi6_sg_unmap(struct usdhi6_host *host, bool force)
{
 struct mmc_data *data = host->mrq->data;
 struct page *page = host->head_pg.page;

 if (page) {

  struct scatterlist *sg = data->sg_len > 1 ?
   host->sg : data->sg;
  size_t blk_head = host->head_len;

  if (!data->error && data->flags & MMC_DATA_READ) {
   memcpy(host->head_pg.mapped + PAGE_SIZE - blk_head,
          host->bounce_buf, blk_head);
   memcpy(host->pg.mapped, host->bounce_buf + blk_head,
          data->blksz - blk_head);
  }

  flush_dcache_page(page);
  kunmap(page);

  host->head_pg.page = ((void*)0);

  if (!force && sg_dma_len(sg) + sg->offset >
      (host->page_idx << PAGE_SHIFT) + data->blksz - blk_head)

   return;
 }

 page = host->pg.page;
 if (!page)
  return;

 flush_dcache_page(page);
 kunmap(page);

 host->pg.page = ((void*)0);
}
