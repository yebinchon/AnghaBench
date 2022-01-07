
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_8__ {int pixelformat; } ;
struct TYPE_7__ {TYPE_4__ pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; int type; } ;
struct fimc_frame {int dummy; } ;
struct fimc_fmt {int dummy; } ;
struct TYPE_6__ {int vfd; } ;
struct fimc_dev {TYPE_2__ m2m; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_frame s_frame; TYPE_1__ fh; struct fimc_dev* fimc_dev; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int __set_frame_format (struct fimc_frame*,struct fimc_fmt*,TYPE_4__*) ;
 struct fimc_ctx* fh_to_ctx (void*) ;
 int fimc_alpha_ctrl_update (struct fimc_ctx*) ;
 struct fimc_fmt* fimc_find_format (int *,int *,int ,int ) ;
 int fimc_try_fmt_mplane (struct fimc_ctx*,struct v4l2_format*) ;
 int get_m2m_fmt_flags (int ) ;
 int v4l2_err (int *,char*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;

__attribute__((used)) static int fimc_m2m_s_fmt_mplane(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct fimc_ctx *ctx = fh_to_ctx(fh);
 struct fimc_dev *fimc = ctx->fimc_dev;
 struct fimc_fmt *fmt;
 struct vb2_queue *vq;
 struct fimc_frame *frame;
 int ret;

 ret = fimc_try_fmt_mplane(ctx, f);
 if (ret)
  return ret;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);

 if (vb2_is_busy(vq)) {
  v4l2_err(&fimc->m2m.vfd, "queue (%d) busy\n", f->type);
  return -EBUSY;
 }

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  frame = &ctx->s_frame;
 else
  frame = &ctx->d_frame;

 fmt = fimc_find_format(&f->fmt.pix_mp.pixelformat, ((void*)0),
          get_m2m_fmt_flags(f->type), 0);
 if (!fmt)
  return -EINVAL;

 __set_frame_format(frame, fmt, &f->fmt.pix_mp);


 fimc_alpha_ctrl_update(ctx);

 return 0;
}
