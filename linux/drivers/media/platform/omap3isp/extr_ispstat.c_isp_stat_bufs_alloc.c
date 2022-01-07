
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ispstat_buffer {int empty; int virt_addr; int dma_addr; } ;
struct TYPE_4__ {int name; } ;
struct ispstat {scalar_t__ buf_alloc_size; scalar_t__ state; TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* buf; scalar_t__ buf_processing; int * locked_buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; int stat_lock; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 scalar_t__ ISPSTAT_DISABLED ;
 scalar_t__ ISP_STAT_USES_DMAENGINE (struct ispstat*) ;
 unsigned int STAT_MAX_BUFS ;
 int dev_dbg (struct device*,char*,int ,unsigned int,int *,int ) ;
 int dev_err (struct device*,char*,int ,unsigned int) ;
 int dev_info (struct device*,char*,int ) ;
 int isp_stat_bufs_alloc_one (struct device*,struct ispstat_buffer*,scalar_t__) ;
 int isp_stat_bufs_free (struct ispstat*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int isp_stat_bufs_alloc(struct ispstat *stat, u32 size)
{
 struct device *dev = ISP_STAT_USES_DMAENGINE(stat)
      ? ((void*)0) : stat->isp->dev;
 unsigned long flags;
 unsigned int i;

 spin_lock_irqsave(&stat->isp->stat_lock, flags);

 BUG_ON(stat->locked_buf != ((void*)0));


 if (stat->buf_alloc_size >= size) {
  spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
  return 0;
 }

 if (stat->state != ISPSTAT_DISABLED || stat->buf_processing) {
  dev_info(stat->isp->dev,
    "%s: trying to allocate memory when busy\n",
    stat->subdev.name);
  spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
  return -EBUSY;
 }

 spin_unlock_irqrestore(&stat->isp->stat_lock, flags);

 isp_stat_bufs_free(stat);

 stat->buf_alloc_size = size;

 for (i = 0; i < STAT_MAX_BUFS; i++) {
  struct ispstat_buffer *buf = &stat->buf[i];
  int ret;

  ret = isp_stat_bufs_alloc_one(dev, buf, size);
  if (ret < 0) {
   dev_err(stat->isp->dev,
    "%s: Failed to allocate DMA buffer %u\n",
    stat->subdev.name, i);
   isp_stat_bufs_free(stat);
   return ret;
  }

  buf->empty = 1;

  dev_dbg(stat->isp->dev,
   "%s: buffer[%u] allocated. dma=%pad virt=%p",
   stat->subdev.name, i, &buf->dma_addr, buf->virt_addr);
 }

 return 0;
}
