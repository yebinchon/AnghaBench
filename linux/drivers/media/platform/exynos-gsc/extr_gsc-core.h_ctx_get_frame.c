
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_frame {int dummy; } ;
struct gsc_ctx {struct gsc_frame d_frame; struct gsc_frame s_frame; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 struct gsc_frame* ERR_PTR (int ) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int pr_err (char*,int) ;

__attribute__((used)) static inline struct gsc_frame *ctx_get_frame(struct gsc_ctx *ctx,
           enum v4l2_buf_type type)
{
 struct gsc_frame *frame;

 if (V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE == type) {
  frame = &ctx->s_frame;
 } else if (V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE == type) {
  frame = &ctx->d_frame;
 } else {
  pr_err("Wrong buffer/video queue type (%d)", type);
  return ERR_PTR(-EINVAL);
 }

 return frame;
}
