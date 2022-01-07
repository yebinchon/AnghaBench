
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcnt; } ;
struct fimc_dev {int lock; int state; TYPE_1__ m2m; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct fimc_ctx {TYPE_2__ fh; struct fimc_dev* fimc_dev; } ;
struct file {int private_data; } ;


 int ST_M2M_RUN ;
 int clear_bit (int ,int *) ;
 int current ;
 int dbg (char*,int ,int ,scalar_t__) ;
 struct fimc_ctx* fh_to_ctx (int ) ;
 int fimc_ctrls_delete (struct fimc_ctx*) ;
 int kfree (struct fimc_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int task_pid_nr (int ) ;
 int v4l2_fh_del (TYPE_2__*) ;
 int v4l2_fh_exit (TYPE_2__*) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int fimc_m2m_release(struct file *file)
{
 struct fimc_ctx *ctx = fh_to_ctx(file->private_data);
 struct fimc_dev *fimc = ctx->fimc_dev;

 dbg("pid: %d, state: 0x%lx, refcnt= %d",
  task_pid_nr(current), fimc->state, fimc->m2m.refcnt);

 mutex_lock(&fimc->lock);

 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 fimc_ctrls_delete(ctx);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);

 if (--fimc->m2m.refcnt <= 0)
  clear_bit(ST_M2M_RUN, &fimc->state);
 kfree(ctx);

 mutex_unlock(&fimc->lock);
 return 0;
}
