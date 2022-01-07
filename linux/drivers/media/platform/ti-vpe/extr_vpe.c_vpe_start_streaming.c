
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_ctx {scalar_t__ sequence; scalar_t__ deinterlacing; int dev; } ;
struct vb2_queue {int dummy; } ;


 int EINVAL ;
 int VB2_BUF_STATE_QUEUED ;
 scalar_t__ check_srcdst_sizes (struct vpe_ctx*) ;
 int config_edi_input_mode (struct vpe_ctx*,int) ;
 int set_srcdst_params (struct vpe_ctx*) ;
 struct vpe_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vpe_err (int ,char*) ;
 int vpe_return_all_buffers (struct vpe_ctx*,struct vb2_queue*,int ) ;

__attribute__((used)) static int vpe_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct vpe_ctx *ctx = vb2_get_drv_priv(q);


 if (check_srcdst_sizes(ctx)) {
  vpe_err(ctx->dev,
   "Conversion setup failed, check source and destination parameters\n"
   );
  vpe_return_all_buffers(ctx, q, VB2_BUF_STATE_QUEUED);
  return -EINVAL;
 }

 if (ctx->deinterlacing)
  config_edi_input_mode(ctx, 0x0);

 if (ctx->sequence != 0)
  set_srcdst_params(ctx);

 return 0;
}
