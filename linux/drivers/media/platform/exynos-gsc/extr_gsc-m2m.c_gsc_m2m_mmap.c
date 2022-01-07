
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct gsc_dev {int lock; } ;
struct gsc_ctx {int m2m_ctx; struct gsc_dev* gsc_dev; } ;
struct file {int private_data; } ;


 int ERESTARTSYS ;
 struct gsc_ctx* fh_to_ctx (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_m2m_mmap (struct file*,int ,struct vm_area_struct*) ;

__attribute__((used)) static int gsc_m2m_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct gsc_ctx *ctx = fh_to_ctx(file->private_data);
 struct gsc_dev *gsc = ctx->gsc_dev;
 int ret;

 if (mutex_lock_interruptible(&gsc->lock))
  return -ERESTARTSYS;

 ret = v4l2_m2m_mmap(file, ctx->m2m_ctx, vma);
 mutex_unlock(&gsc->lock);

 return ret;
}
