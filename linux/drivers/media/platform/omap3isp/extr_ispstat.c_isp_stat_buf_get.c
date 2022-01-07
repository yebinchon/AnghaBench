
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap3isp_stat_data {scalar_t__ buf_size; int buf; } ;
struct ispstat_buffer {int empty; scalar_t__ buf_size; int virt_addr; } ;
struct TYPE_4__ {int name; } ;
struct ispstat {TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* locked_buf; } ;
struct TYPE_3__ {int dev; int stat_lock; } ;


 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 struct ispstat_buffer* ERR_PTR (int ) ;
 int copy_to_user (int ,int ,scalar_t__) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_info (int ,char*,int ,int) ;
 int dev_warn (int ,char*,int ) ;
 scalar_t__ isp_stat_buf_check_magic (struct ispstat*,struct ispstat_buffer*) ;
 struct ispstat_buffer* isp_stat_buf_find_oldest (struct ispstat*) ;
 int isp_stat_buf_release (struct ispstat*) ;
 int isp_stat_buf_sync_for_cpu (struct ispstat*,struct ispstat_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ispstat_buffer *isp_stat_buf_get(struct ispstat *stat,
            struct omap3isp_stat_data *data)
{
 int rval = 0;
 unsigned long flags;
 struct ispstat_buffer *buf;

 spin_lock_irqsave(&stat->isp->stat_lock, flags);

 while (1) {
  buf = isp_stat_buf_find_oldest(stat);
  if (!buf) {
   spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
   dev_dbg(stat->isp->dev, "%s: cannot find a buffer.\n",
    stat->subdev.name);
   return ERR_PTR(-EBUSY);
  }
  if (isp_stat_buf_check_magic(stat, buf)) {
   dev_dbg(stat->isp->dev,
    "%s: current buffer has corrupted data\n.",
    stat->subdev.name);

   buf->empty = 1;
  } else {

   break;
  }
 }

 stat->locked_buf = buf;

 spin_unlock_irqrestore(&stat->isp->stat_lock, flags);

 if (buf->buf_size > data->buf_size) {
  dev_warn(stat->isp->dev,
    "%s: userspace's buffer size is not enough.\n",
    stat->subdev.name);
  isp_stat_buf_release(stat);
  return ERR_PTR(-EINVAL);
 }

 isp_stat_buf_sync_for_cpu(stat, buf);

 rval = copy_to_user(data->buf,
       buf->virt_addr,
       buf->buf_size);

 if (rval) {
  dev_info(stat->isp->dev,
    "%s: failed copying %d bytes of stat data\n",
    stat->subdev.name, rval);
  buf = ERR_PTR(-EFAULT);
  isp_stat_buf_release(stat);
 }

 return buf;
}
