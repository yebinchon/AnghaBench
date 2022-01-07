
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refcnt; } ;
struct gsc_dev {int lock; int state; TYPE_1__ m2m; } ;
struct gsc_ctx {int fh; int m2m_ctx; struct gsc_dev* gsc_dev; } ;
struct file {int private_data; } ;


 int ST_M2M_OPEN ;
 int clear_bit (int ,int *) ;
 int current ;
 struct gsc_ctx* fh_to_ctx (int ) ;
 int gsc_ctrls_delete (struct gsc_ctx*) ;
 int kfree (struct gsc_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,scalar_t__) ;
 int task_pid_nr (int ) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int gsc_m2m_release(struct file *file)
{
 struct gsc_ctx *ctx = fh_to_ctx(file->private_data);
 struct gsc_dev *gsc = ctx->gsc_dev;

 pr_debug("pid: %d, state: 0x%lx, refcnt= %d",
  task_pid_nr(current), gsc->state, gsc->m2m.refcnt);

 mutex_lock(&gsc->lock);

 v4l2_m2m_ctx_release(ctx->m2m_ctx);
 gsc_ctrls_delete(ctx);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);

 if (--gsc->m2m.refcnt <= 0)
  clear_bit(ST_M2M_OPEN, &gsc->state);
 kfree(ctx);

 mutex_unlock(&gsc->lock);
 return 0;
}
