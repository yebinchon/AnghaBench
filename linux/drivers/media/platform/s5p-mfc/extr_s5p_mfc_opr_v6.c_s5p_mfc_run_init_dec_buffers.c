
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; } ;
struct s5p_mfc_ctx {scalar_t__ capture_state; int state; int num; struct s5p_mfc_dev* dev; } ;


 int EAGAIN ;
 int MFCINST_ERROR ;
 scalar_t__ QUEUE_BUFS_MMAPED ;
 int mfc_err (char*) ;
 int s5p_mfc_set_dec_frame_buffer_v6 (struct s5p_mfc_ctx*) ;

__attribute__((used)) static inline int s5p_mfc_run_init_dec_buffers(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 int ret;




 if (ctx->capture_state != QUEUE_BUFS_MMAPED) {
  mfc_err("It seems that not all destination buffers were\n"
   "mmapped.MFC requires that all destination are mmapped\n"
   "before starting processing.\n");
  return -EAGAIN;
 }

 dev->curr_ctx = ctx->num;
 ret = s5p_mfc_set_dec_frame_buffer_v6(ctx);
 if (ret) {
  mfc_err("Failed to alloc frame mem.\n");
  ctx->state = MFCINST_ERROR;
 }
 return ret;
}
