
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct gsc_dev {int lock; } ;
struct gsc_ctx {int m2m_ctx; struct gsc_dev* gsc_dev; } ;
struct file {int private_data; } ;
typedef int __poll_t ;


 int EPOLLERR ;
 struct gsc_ctx* fh_to_ctx (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_m2m_poll (struct file*,int ,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t gsc_m2m_poll(struct file *file,
     struct poll_table_struct *wait)
{
 struct gsc_ctx *ctx = fh_to_ctx(file->private_data);
 struct gsc_dev *gsc = ctx->gsc_dev;
 __poll_t ret;

 if (mutex_lock_interruptible(&gsc->lock))
  return EPOLLERR;

 ret = v4l2_m2m_poll(file, ctx->m2m_ctx, wait);
 mutex_unlock(&gsc->lock);

 return ret;
}
