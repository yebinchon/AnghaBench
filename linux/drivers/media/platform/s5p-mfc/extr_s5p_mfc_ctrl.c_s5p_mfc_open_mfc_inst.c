
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ type; int mfc_ops; int inst_no; } ;
struct s5p_mfc_ctx {scalar_t__ type; int mfc_ops; int inst_no; } ;


 int EIO ;
 scalar_t__ MFCINST_DECODER ;
 int S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET ;
 int alloc_dec_temp_buffers ;
 int alloc_instance_buffer ;
 int mfc_debug (int,char*,int ) ;
 int mfc_err (char*) ;
 int release_dec_desc_buffer ;
 int release_instance_buffer ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_ctx (struct s5p_mfc_dev*,int ,int ) ;
 int set_work_bit_irqsave (struct s5p_mfc_dev*) ;
 int try_run ;

int s5p_mfc_open_mfc_inst(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx)
{
 int ret = 0;

 ret = s5p_mfc_hw_call(dev->mfc_ops, alloc_instance_buffer, ctx);
 if (ret) {
  mfc_err("Failed allocating instance buffer\n");
  goto err;
 }

 if (ctx->type == MFCINST_DECODER) {
  ret = s5p_mfc_hw_call(dev->mfc_ops,
     alloc_dec_temp_buffers, ctx);
  if (ret) {
   mfc_err("Failed allocating temporary buffers\n");
   goto err_free_inst_buf;
  }
 }

 set_work_bit_irqsave(ctx);
 s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
 if (s5p_mfc_wait_for_done_ctx(ctx,
  S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET, 0)) {

  mfc_err("Error getting instance from hardware\n");
  ret = -EIO;
  goto err_free_desc_buf;
 }

 mfc_debug(2, "Got instance number: %d\n", ctx->inst_no);
 return ret;

err_free_desc_buf:
 if (ctx->type == MFCINST_DECODER)
  s5p_mfc_hw_call(dev->mfc_ops, release_dec_desc_buffer, ctx);
err_free_inst_buf:
 s5p_mfc_hw_call(dev->mfc_ops, release_instance_buffer, ctx);
err:
 return ret;
}
