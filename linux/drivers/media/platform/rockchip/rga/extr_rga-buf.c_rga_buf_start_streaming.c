
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct rockchip_rga {int dev; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;


 int VB2_BUF_STATE_QUEUED ;
 int pm_runtime_get_sync (int ) ;
 int rga_buf_return_buffers (struct vb2_queue*,int ) ;
 struct rga_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct rga_ctx *ctx = vb2_get_drv_priv(q);
 struct rockchip_rga *rga = ctx->rga;
 int ret;

 ret = pm_runtime_get_sync(rga->dev);
 if (ret < 0) {
  rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
  return ret;
 }

 return 0;
}
