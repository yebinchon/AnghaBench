
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct rockchip_rga {int dev; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;


 int VB2_BUF_STATE_ERROR ;
 int pm_runtime_put (int ) ;
 int rga_buf_return_buffers (struct vb2_queue*,int ) ;
 struct rga_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void rga_buf_stop_streaming(struct vb2_queue *q)
{
 struct rga_ctx *ctx = vb2_get_drv_priv(q);
 struct rockchip_rga *rga = ctx->rga;

 rga_buf_return_buffers(q, VB2_BUF_STATE_ERROR);
 pm_runtime_put(rga->dev);
}
