
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct fimc_ctx* drv_priv; } ;
struct fimc_vid_cap {int reqbufs_count; int active_buf_cnt; int ve; scalar_t__ frame_count; } ;
struct fimc_dev {int state; struct fimc_vid_cap vid_cap; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;


 int ST_CAPT_ISP_STREAM ;
 int ST_CAPT_PEND ;
 int ST_CAPT_STREAM ;
 int fimc_activate_capture (struct fimc_ctx*) ;
 int fimc_capture_hw_init (struct fimc_dev*) ;
 int fimc_capture_state_cleanup (struct fimc_dev*,int) ;
 int fimc_pipeline_call (int *,int ,int) ;
 int set_bit (int ,int *) ;
 int set_stream ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct fimc_ctx *ctx = q->drv_priv;
 struct fimc_dev *fimc = ctx->fimc_dev;
 struct fimc_vid_cap *vid_cap = &fimc->vid_cap;
 int min_bufs;
 int ret;

 vid_cap->frame_count = 0;

 ret = fimc_capture_hw_init(fimc);
 if (ret) {
  fimc_capture_state_cleanup(fimc, 0);
  return ret;
 }

 set_bit(ST_CAPT_PEND, &fimc->state);

 min_bufs = fimc->vid_cap.reqbufs_count > 1 ? 2 : 1;

 if (vid_cap->active_buf_cnt >= min_bufs &&
     !test_and_set_bit(ST_CAPT_STREAM, &fimc->state)) {
  fimc_activate_capture(ctx);

  if (!test_and_set_bit(ST_CAPT_ISP_STREAM, &fimc->state))
   return fimc_pipeline_call(&vid_cap->ve, set_stream, 1);
 }

 return 0;
}
