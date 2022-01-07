
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int width; int height; TYPE_2__* plane_fmt; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct flite_frame {int f_width; int f_height; struct fimc_fmt const* fmt; } ;
struct fimc_lite {int * payload; int vb_queue; struct flite_frame out_frame; } ;
struct fimc_fmt {int* depth; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int sizeimage; } ;


 int EBUSY ;
 int fimc_lite_try_fmt (struct fimc_lite*,struct v4l2_pix_format_mplane*,struct fimc_fmt const**) ;
 int max (int,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_s_fmt_mplane(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pixm = &f->fmt.pix_mp;
 struct fimc_lite *fimc = video_drvdata(file);
 struct flite_frame *frame = &fimc->out_frame;
 const struct fimc_fmt *fmt = ((void*)0);
 int ret;

 if (vb2_is_busy(&fimc->vb_queue))
  return -EBUSY;

 ret = fimc_lite_try_fmt(fimc, &f->fmt.pix_mp, &fmt);
 if (ret < 0)
  return ret;

 frame->fmt = fmt;
 fimc->payload[0] = max((pixm->width * pixm->height * fmt->depth[0]) / 8,
          pixm->plane_fmt[0].sizeimage);
 frame->f_width = pixm->width;
 frame->f_height = pixm->height;

 return 0;
}
