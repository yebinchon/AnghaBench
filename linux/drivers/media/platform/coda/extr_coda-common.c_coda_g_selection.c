
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {int target; struct v4l2_rect r; int type; } ;
struct file {int dummy; } ;
struct coda_q_data {struct v4l2_rect rect; int height; int width; } ;
struct coda_ctx {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;







 struct coda_ctx* fh_to_ctx (void*) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;

__attribute__((used)) static int coda_g_selection(struct file *file, void *fh,
       struct v4l2_selection *s)
{
 struct coda_ctx *ctx = fh_to_ctx(fh);
 struct coda_q_data *q_data;
 struct v4l2_rect r, *rsel;

 q_data = get_q_data(ctx, s->type);
 if (!q_data)
  return -EINVAL;

 r.left = 0;
 r.top = 0;
 r.width = q_data->width;
 r.height = q_data->height;
 rsel = &q_data->rect;

 switch (s->target) {
 case 128:
 case 129:
  rsel = &r;

 case 130:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 133:
 case 131:
  rsel = &r;

 case 134:
 case 132:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 s->r = *rsel;

 return 0;
}
