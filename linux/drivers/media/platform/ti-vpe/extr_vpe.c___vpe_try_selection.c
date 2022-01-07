
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_q_data {int flags; int height; scalar_t__ width; } ;
struct vpe_ctx {int dev; } ;
struct TYPE_2__ {scalar_t__ top; scalar_t__ left; scalar_t__ width; int height; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;


 int EINVAL ;
 int H_ALIGN ;
 int MIN_H ;
 int MIN_W ;
 int Q_DATA_INTERLACED_SEQ_TB ;
 int S_ALIGN ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;


 struct vpe_q_data* get_q_data (struct vpe_ctx*,scalar_t__) ;
 int v4l_bound_align_image (scalar_t__*,int ,scalar_t__,int,int*,int ,int,int ,int ) ;
 int vpe_err (int ,char*) ;

__attribute__((used)) static int __vpe_try_selection(struct vpe_ctx *ctx, struct v4l2_selection *s)
{
 struct vpe_q_data *q_data;
 int height;

 if ((s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT))
  return -EINVAL;

 q_data = get_q_data(ctx, s->type);
 if (!q_data)
  return -EINVAL;

 switch (s->target) {
 case 129:




  if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 128:




  if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;




 default:
  return -EINVAL;
 }





 if (q_data->flags & Q_DATA_INTERLACED_SEQ_TB)
  height = q_data->height / 2;
 else
  height = q_data->height;

 if (s->r.top < 0 || s->r.left < 0) {
  vpe_err(ctx->dev, "negative values for top and left\n");
  s->r.top = s->r.left = 0;
 }

 v4l_bound_align_image(&s->r.width, MIN_W, q_data->width, 1,
  &s->r.height, MIN_H, height, H_ALIGN, S_ALIGN);


 if (s->r.left + s->r.width > q_data->width)
  s->r.left = q_data->width - s->r.width;
 if (s->r.top + s->r.height > q_data->height)
  s->r.top = q_data->height - s->r.height;

 return 0;
}
