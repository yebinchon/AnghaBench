
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* height; void* width; int left; int top; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct mtk_vcodec_ctx {int dummy; } ;
struct mtk_q_data {void* visible_height; void* visible_width; int coded_height; int coded_width; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;

 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 void* min (void*,int ) ;
 struct mtk_q_data* mtk_venc_get_q_data (struct mtk_vcodec_ctx*,int ) ;

__attribute__((used)) static int vidioc_venc_s_selection(struct file *file, void *priv,
         struct v4l2_selection *s)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 struct mtk_q_data *q_data;

 if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 q_data = mtk_venc_get_q_data(ctx, s->type);
 if (!q_data)
  return -EINVAL;

 switch (s->target) {
 case 128:

  s->r.top = 0;
  s->r.left = 0;
  s->r.width = min(s->r.width, q_data->coded_width);
  s->r.height = min(s->r.height, q_data->coded_height);
  q_data->visible_width = s->r.width;
  q_data->visible_height = s->r.height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
