
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {struct gsc_ctx* drv_priv; } ;
struct gsc_ctx {TYPE_2__* gsc_dev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int __gsc_m2m_cleanup_queue (struct gsc_ctx*) ;
 int __gsc_m2m_job_abort (struct gsc_ctx*) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void gsc_m2m_stop_streaming(struct vb2_queue *q)
{
 struct gsc_ctx *ctx = q->drv_priv;

 __gsc_m2m_job_abort(ctx);

 __gsc_m2m_cleanup_queue(ctx);

 pm_runtime_put(&ctx->gsc_dev->pdev->dev);
}
