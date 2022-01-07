
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_selection {TYPE_1__ r; int target; int type; } ;
struct TYPE_4__ {int height; int width; int top; int left; } ;
struct mtk_mdp_frame {TYPE_2__ crop; int height; int width; } ;
struct mtk_mdp_ctx {int id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 struct mtk_mdp_frame* mtk_mdp_ctx_get_frame (struct mtk_mdp_ctx*,int ) ;
 int mtk_mdp_dbg (int,char*,int ,int ,int ) ;
 scalar_t__ mtk_mdp_is_target_compose (int ) ;
 scalar_t__ mtk_mdp_is_target_crop (int ) ;

__attribute__((used)) static int mtk_mdp_m2m_g_selection(struct file *file, void *fh,
           struct v4l2_selection *s)
{
 struct mtk_mdp_frame *frame;
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 bool valid = 0;

 if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (mtk_mdp_is_target_compose(s->target))
   valid = 1;
 } else if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  if (mtk_mdp_is_target_crop(s->target))
   valid = 1;
 }
 if (!valid) {
  mtk_mdp_dbg(1, "[%d] invalid type:%d,%u", ctx->id, s->type,
       s->target);
  return -EINVAL;
 }

 frame = mtk_mdp_ctx_get_frame(ctx, s->type);

 switch (s->target) {
 case 131:
 case 132:
 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = frame->width;
  s->r.height = frame->height;
  return 0;

 case 133:
 case 130:
  s->r.left = frame->crop.left;
  s->r.top = frame->crop.top;
  s->r.width = frame->crop.width;
  s->r.height = frame->crop.height;
  return 0;
 }

 return -EINVAL;
}
