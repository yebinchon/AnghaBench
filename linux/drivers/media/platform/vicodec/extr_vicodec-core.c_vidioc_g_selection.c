
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vicodec_q_data {int coded_height; int coded_width; int visible_height; int visible_width; } ;
struct vicodec_ctx {scalar_t__ is_enc; } ;
struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct vicodec_ctx* file2ctx (struct file*) ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int ) ;

__attribute__((used)) static int vidioc_g_selection(struct file *file, void *priv,
         struct v4l2_selection *s)
{
 struct vicodec_ctx *ctx = file2ctx(file);
 struct vicodec_q_data *q_data;

 q_data = get_q_data(ctx, s->type);
 if (!q_data)
  return -EINVAL;




 if (ctx->is_enc && s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  switch (s->target) {
  case 130:
   s->r.left = 0;
   s->r.top = 0;
   s->r.width = q_data->visible_width;
   s->r.height = q_data->visible_height;
   return 0;
  case 128:
  case 129:
   s->r.left = 0;
   s->r.top = 0;
   s->r.width = q_data->coded_width;
   s->r.height = q_data->coded_height;
   return 0;
  }
 } else if (!ctx->is_enc && s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  switch (s->target) {
  case 133:
   s->r.left = 0;
   s->r.top = 0;
   s->r.width = q_data->visible_width;
   s->r.height = q_data->visible_height;
   return 0;
  case 131:
  case 132:
   s->r.left = 0;
   s->r.top = 0;
   s->r.width = q_data->coded_width;
   s->r.height = q_data->coded_height;
   return 0;
  }
 }
 return -EINVAL;
}
