
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cxl_context* private_data; } ;
struct cxl_context {scalar_t__ status; int pe; int lock; int wq; } ;
typedef int __poll_t ;


 scalar_t__ CLOSED ;
 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ ctx_event_pending (struct cxl_context*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int pr_devel (char*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__poll_t afu_poll(struct file *file, struct poll_table_struct *poll)
{
 struct cxl_context *ctx = file->private_data;
 __poll_t mask = 0;
 unsigned long flags;


 poll_wait(file, &ctx->wq, poll);

 pr_devel("afu_poll wait done pe: %i\n", ctx->pe);

 spin_lock_irqsave(&ctx->lock, flags);
 if (ctx_event_pending(ctx))
  mask |= EPOLLIN | EPOLLRDNORM;
 else if (ctx->status == CLOSED)


  mask |= EPOLLERR;
 spin_unlock_irqrestore(&ctx->lock, flags);

 pr_devel("afu_poll pe: %i returning %#x\n", ctx->pe, mask);

 return mask;
}
