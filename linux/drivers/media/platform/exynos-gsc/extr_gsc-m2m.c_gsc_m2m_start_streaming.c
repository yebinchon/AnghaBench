
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


 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int gsc_m2m_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct gsc_ctx *ctx = q->drv_priv;
 int ret;

 ret = pm_runtime_get_sync(&ctx->gsc_dev->pdev->dev);
 return ret > 0 ? 0 : ret;
}
