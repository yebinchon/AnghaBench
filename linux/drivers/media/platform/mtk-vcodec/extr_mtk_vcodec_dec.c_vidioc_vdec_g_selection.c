
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_2__ r; } ;
struct TYPE_3__ {int buf_h; int buf_w; int pic_h; int pic_w; } ;
struct mtk_vcodec_ctx {scalar_t__ state; TYPE_1__ picinfo; struct mtk_q_data* q_data; } ;
struct mtk_q_data {int visible_height; int visible_width; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int GET_PARAM_CROP_INFO ;
 size_t MTK_Q_DATA_DST ;
 scalar_t__ MTK_STATE_HEADER ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 int vdec_if_get_param (struct mtk_vcodec_ctx*,int ,TYPE_2__*) ;

__attribute__((used)) static int vidioc_vdec_g_selection(struct file *file, void *priv,
   struct v4l2_selection *s)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
 struct mtk_q_data *q_data;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 q_data = &ctx->q_data[MTK_Q_DATA_DST];

 switch (s->target) {
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = ctx->picinfo.pic_w;
  s->r.height = ctx->picinfo.pic_h;
  break;
 case 129:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = ctx->picinfo.buf_w;
  s->r.height = ctx->picinfo.buf_h;
  break;
 case 130:
  if (vdec_if_get_param(ctx, GET_PARAM_CROP_INFO, &(s->r))) {

   s->r.left = 0;
   s->r.top = 0;
   s->r.width = q_data->visible_width;
   s->r.height = q_data->visible_height;
  }
  break;
 default:
  return -EINVAL;
 }

 if (ctx->state < MTK_STATE_HEADER) {

  s->r.left = 0;
  s->r.top = 0;
  s->r.width = q_data->visible_width;
  s->r.height = q_data->visible_height;
  return 0;
 }

 return 0;
}
