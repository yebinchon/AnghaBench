
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ type; int state; int inst_no; int mfc_ops; } ;
struct s5p_mfc_ctx {scalar_t__ type; int state; int inst_no; int mfc_ops; } ;


 scalar_t__ MFCINST_DECODER ;
 int MFCINST_FREE ;
 int MFCINST_RETURN_INST ;
 int MFC_NO_INSTANCE_SET ;
 int S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET ;
 int mfc_err (char*) ;
 int release_codec_buffers ;
 int release_dec_desc_buffer ;
 int release_instance_buffer ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_ctx (struct s5p_mfc_dev*,int ,int ) ;
 int set_work_bit_irqsave (struct s5p_mfc_dev*) ;
 int try_run ;

void s5p_mfc_close_mfc_inst(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx)
{
 ctx->state = MFCINST_RETURN_INST;
 set_work_bit_irqsave(ctx);
 s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);

 if (s5p_mfc_wait_for_done_ctx(ctx,
    S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET, 0))
  mfc_err("Err returning instance\n");


 s5p_mfc_hw_call(dev->mfc_ops, release_codec_buffers, ctx);
 s5p_mfc_hw_call(dev->mfc_ops, release_instance_buffer, ctx);
 if (ctx->type == MFCINST_DECODER)
  s5p_mfc_hw_call(dev->mfc_ops, release_dec_desc_buffer, ctx);

 ctx->inst_no = MFC_NO_INSTANCE_SET;
 ctx->state = MFCINST_FREE;
}
