
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int ) ;
 struct s5p_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int s5p_jpeg_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct s5p_jpeg_ctx *ctx = vb2_get_drv_priv(q);
 int ret;

 ret = pm_runtime_get_sync(ctx->jpeg->dev);

 return ret > 0 ? 0 : ret;
}
