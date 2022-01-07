
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int hw_lock; int mfc_cmds; struct s5p_mfc_ctx** ctx; int enter_suspend; } ;
struct s5p_mfc_ctx {scalar_t__ type; int state; int capture_state; } ;


 unsigned int EAGAIN ;
 scalar_t__ MFCINST_DECODER ;
 scalar_t__ MFCINST_ENCODER ;
 int MFC_DEC_FRAME ;
 int MFC_DEC_LAST_FRAME ;
 int QUEUE_FREE ;
 int close_inst_cmd ;
 int mfc_debug (int,char*) ;
 int mfc_err (char*,...) ;
 int open_inst_cmd ;
 int s5p_mfc_clean_ctx_int_flags (struct s5p_mfc_ctx*) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 int s5p_mfc_get_new_ctx (struct s5p_mfc_dev*) ;
 unsigned int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_ctx*) ;
 unsigned int s5p_mfc_run_dec_frame (struct s5p_mfc_ctx*,int ) ;
 unsigned int s5p_mfc_run_enc_frame (struct s5p_mfc_ctx*) ;
 int s5p_mfc_run_init_dec (struct s5p_mfc_ctx*) ;
 unsigned int s5p_mfc_run_init_dec_buffers (struct s5p_mfc_ctx*) ;
 int s5p_mfc_run_init_enc (struct s5p_mfc_ctx*) ;
 int s5p_mfc_run_res_change (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_dec_desc_buffer (struct s5p_mfc_ctx*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void s5p_mfc_try_run_v5(struct s5p_mfc_dev *dev)
{
 struct s5p_mfc_ctx *ctx;
 int new_ctx;
 unsigned int ret = 0;

 if (test_bit(0, &dev->enter_suspend)) {
  mfc_debug(1, "Entering suspend so do not schedule any jobs\n");
  return;
 }

 if (test_and_set_bit(0, &dev->hw_lock) != 0) {

  mfc_debug(1, "Couldn't lock HW\n");
  return;
 }

 new_ctx = s5p_mfc_get_new_ctx(dev);
 if (new_ctx < 0) {

  if (test_and_clear_bit(0, &dev->hw_lock) == 0) {
   mfc_err("Failed to unlock hardware\n");
   return;
  }
  mfc_debug(1, "No ctx is scheduled to be run\n");
  return;
 }
 ctx = dev->ctx[new_ctx];





 s5p_mfc_clock_on();
 s5p_mfc_clean_ctx_int_flags(ctx);

 if (ctx->type == MFCINST_DECODER) {
  s5p_mfc_set_dec_desc_buffer(ctx);
  switch (ctx->state) {
  case 136:
   s5p_mfc_run_dec_frame(ctx, MFC_DEC_LAST_FRAME);
   break;
  case 128:
   ret = s5p_mfc_run_dec_frame(ctx, MFC_DEC_FRAME);
   break;
  case 133:
   ret = s5p_mfc_hw_call(dev->mfc_cmds, open_inst_cmd,
     ctx);
   break;
  case 129:
   ret = s5p_mfc_hw_call(dev->mfc_cmds, close_inst_cmd,
     ctx);
   break;
  case 135:
   s5p_mfc_run_init_dec(ctx);
   break;
  case 134:
   ret = s5p_mfc_run_init_dec_buffers(ctx);
   mfc_debug(1, "head parsed\n");
   break;
  case 130:
   s5p_mfc_run_res_change(ctx);
   break;
  case 131:
   s5p_mfc_run_dec_frame(ctx, MFC_DEC_FRAME);
   break;
  case 132:
   mfc_debug(2, "Finished remaining frames after resolution change\n");
   ctx->capture_state = QUEUE_FREE;
   mfc_debug(2, "Will re-init the codec\n");
   s5p_mfc_run_init_dec(ctx);
   break;
  default:
   ret = -EAGAIN;
  }
 } else if (ctx->type == MFCINST_ENCODER) {
  switch (ctx->state) {
  case 136:
  case 128:
   ret = s5p_mfc_run_enc_frame(ctx);
   break;
  case 133:
   ret = s5p_mfc_hw_call(dev->mfc_cmds, open_inst_cmd,
     ctx);
   break;
  case 129:
   ret = s5p_mfc_hw_call(dev->mfc_cmds, close_inst_cmd,
     ctx);
   break;
  case 135:
   s5p_mfc_run_init_enc(ctx);
   break;
  default:
   ret = -EAGAIN;
  }
 } else {
  mfc_err("Invalid context type: %d\n", ctx->type);
  ret = -EAGAIN;
 }

 if (ret) {

  if (test_and_clear_bit(0, &dev->hw_lock) == 0)
   mfc_err("Failed to unlock hardware\n");





  s5p_mfc_clock_off();
 }
}
