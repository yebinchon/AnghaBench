
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_jpeg_q_data {int dummy; } ;
struct s5p_jpeg_ctx {struct s5p_jpeg_q_data cap_q; struct s5p_jpeg_q_data out_q; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;

__attribute__((used)) static struct s5p_jpeg_q_data *get_q_data(struct s5p_jpeg_ctx *ctx,
       enum v4l2_buf_type type)
{
 if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return &ctx->out_q;
 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return &ctx->cap_q;

 return ((void*)0);
}
