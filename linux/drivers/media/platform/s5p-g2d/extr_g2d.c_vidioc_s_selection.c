
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; scalar_t__ height; scalar_t__ width; } ;
struct v4l2_selection {TYPE_1__ r; int type; } ;
struct g2d_frame {scalar_t__ c_width; scalar_t__ o_width; scalar_t__ right; scalar_t__ c_height; scalar_t__ o_height; scalar_t__ bottom; } ;
struct g2d_ctx {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;
 int vidioc_try_selection (struct file*,void*,struct v4l2_selection*) ;

__attribute__((used)) static int vidioc_s_selection(struct file *file, void *prv,
         struct v4l2_selection *s)
{
 struct g2d_ctx *ctx = prv;
 struct g2d_frame *f;
 int ret;

 ret = vidioc_try_selection(file, prv, s);
 if (ret)
  return ret;
 f = get_frame(ctx, s->type);
 if (IS_ERR(f))
  return PTR_ERR(f);

 f->c_width = s->r.width;
 f->c_height = s->r.height;
 f->o_width = s->r.left;
 f->o_height = s->r.top;
 f->bottom = f->o_height + f->c_height;
 f->right = f->o_width + f->c_width;
 return 0;
}
