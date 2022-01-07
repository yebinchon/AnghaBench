
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mapped; int page; } ;
struct usdhi6_host {size_t offset; size_t head_len; void* blk_page; TYPE_3__* mrq; TYPE_1__ pg; int mmc; struct scatterlist* sg; } ;
struct scatterlist {size_t offset; } ;
struct mmc_data {int sg_len; size_t blksz; struct scatterlist* sg; } ;
struct TYPE_6__ {TYPE_2__* cmd; struct mmc_data* data; } ;
struct TYPE_5__ {int opcode; } ;


 size_t PAGE_SIZE ;
 scalar_t__ WARN (int,char*,int,...) ;
 int dev_dbg (int ,char*,int ,int ,void*,size_t,int ,TYPE_3__*) ;
 void* kmap (int ) ;
 int mmc_dev (int ) ;
 int page_to_pfn (int ) ;
 int sg_dma_len (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int usdhi6_blk_bounce (struct usdhi6_host*,struct scatterlist*) ;

__attribute__((used)) static void *usdhi6_sg_map(struct usdhi6_host *host)
{
 struct mmc_data *data = host->mrq->data;
 struct scatterlist *sg = data->sg_len > 1 ? host->sg : data->sg;
 size_t head = PAGE_SIZE - sg->offset;
 size_t blk_head = head % data->blksz;

 WARN(host->pg.page, "%p not properly unmapped!\n", host->pg.page);
 if (WARN(sg_dma_len(sg) % data->blksz,
   "SG size %u isn't a multiple of block size %u\n",
   sg_dma_len(sg), data->blksz))
  return ((void*)0);

 host->pg.page = sg_page(sg);
 host->pg.mapped = kmap(host->pg.page);
 host->offset = sg->offset;





 host->head_len = blk_head;

 if (head < data->blksz)




  usdhi6_blk_bounce(host, sg);
 else
  host->blk_page = host->pg.mapped;

 dev_dbg(mmc_dev(host->mmc), "Mapped %p (%lx) at %p + %u for CMD%u @ 0x%p\n",
  host->pg.page, page_to_pfn(host->pg.page), host->pg.mapped,
  sg->offset, host->mrq->cmd->opcode, host->mrq);

 return host->blk_page + host->offset;
}
