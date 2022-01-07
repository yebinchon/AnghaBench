
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct bdisp_ctx* drv_priv; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_2__ {int dev; } ;


 int __bdisp_job_abort (struct bdisp_ctx*) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void bdisp_stop_streaming(struct vb2_queue *q)
{
 struct bdisp_ctx *ctx = q->drv_priv;

 __bdisp_job_abort(ctx);

 pm_runtime_put(ctx->bdisp_dev->dev);
}
