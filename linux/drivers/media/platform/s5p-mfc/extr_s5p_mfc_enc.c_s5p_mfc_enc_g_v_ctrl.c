
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct s5p_mfc_dev {int v4l2_dev; } ;
struct s5p_mfc_ctx {int pb_count; int state; struct s5p_mfc_dev* dev; } ;


 int EINVAL ;
 int MFCINST_ABORT ;
 int MFCINST_HEAD_PARSED ;
 int MFCINST_INIT ;
 int S5P_MFC_R2H_CMD_SEQ_DONE_RET ;

 struct s5p_mfc_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int s5p_mfc_wait_for_done_ctx (struct s5p_mfc_ctx*,int ,int ) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int s5p_mfc_enc_g_v_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_mfc_ctx *ctx = ctrl_to_ctx(ctrl);
 struct s5p_mfc_dev *dev = ctx->dev;

 switch (ctrl->id) {
 case 128:
  if (ctx->state >= MFCINST_HEAD_PARSED &&
      ctx->state < MFCINST_ABORT) {
   ctrl->val = ctx->pb_count;
   break;
  } else if (ctx->state != MFCINST_INIT) {
   v4l2_err(&dev->v4l2_dev, "Encoding not initialised\n");
   return -EINVAL;
  }

  s5p_mfc_wait_for_done_ctx(ctx,
    S5P_MFC_R2H_CMD_SEQ_DONE_RET, 0);
  if (ctx->state >= MFCINST_HEAD_PARSED &&
      ctx->state < MFCINST_ABORT) {
   ctrl->val = ctx->pb_count;
  } else {
   v4l2_err(&dev->v4l2_dev, "Encoding not initialised\n");
   return -EINVAL;
  }
  break;
 }
 return 0;
}
