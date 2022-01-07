
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ispstat_buffer {int empty; int * virt_addr; scalar_t__ dma_addr; int sgt; } ;
struct TYPE_4__ {int name; } ;
struct ispstat {int * active_buf; int buf_alloc_size; TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 scalar_t__ ISP_STAT_USES_DMAENGINE (struct ispstat*) ;
 unsigned int STAT_MAX_BUFS ;
 int dev_dbg (struct device*,char*,int ) ;
 int dma_free_coherent (struct device*,int ,int *,scalar_t__) ;
 int sg_free_table (int *) ;

__attribute__((used)) static void isp_stat_bufs_free(struct ispstat *stat)
{
 struct device *dev = ISP_STAT_USES_DMAENGINE(stat)
      ? ((void*)0) : stat->isp->dev;
 unsigned int i;

 for (i = 0; i < STAT_MAX_BUFS; i++) {
  struct ispstat_buffer *buf = &stat->buf[i];

  if (!buf->virt_addr)
   continue;

  sg_free_table(&buf->sgt);

  dma_free_coherent(dev, stat->buf_alloc_size, buf->virt_addr,
      buf->dma_addr);

  buf->dma_addr = 0;
  buf->virt_addr = ((void*)0);
  buf->empty = 1;
 }

 dev_dbg(stat->isp->dev, "%s: all buffers were freed.\n",
  stat->subdev.name);

 stat->buf_alloc_size = 0;
 stat->active_buf = ((void*)0);
}
