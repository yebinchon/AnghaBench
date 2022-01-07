
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; } ;
struct s5p_mfc_ctx {int state; int num; struct s5p_mfc_dev* dev; } ;


 int MFCINST_ERROR ;
 int mfc_err (char*) ;
 int s5p_mfc_set_enc_ref_buffer_v6 (struct s5p_mfc_ctx*) ;

__attribute__((used)) static inline int s5p_mfc_run_init_enc_buffers(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 int ret;

 dev->curr_ctx = ctx->num;
 ret = s5p_mfc_set_enc_ref_buffer_v6(ctx);
 if (ret) {
  mfc_err("Failed to alloc frame mem.\n");
  ctx->state = MFCINST_ERROR;
 }
 return ret;
}
