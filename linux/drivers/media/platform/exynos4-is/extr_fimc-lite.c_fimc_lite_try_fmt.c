
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format_mplane {int width; int height; int field; int colorspace; int pixelformat; int num_planes; TYPE_2__* plane_fmt; } ;
struct flite_drvdata {int max_height; int out_width_align; int max_width; } ;
struct TYPE_3__ {struct fimc_fmt* fmt; } ;
struct fimc_lite {TYPE_1__ inp_frame; struct flite_drvdata* dd; } ;
struct fimc_fmt {int flags; int* depth; int colorspace; int fourcc; int memplanes; } ;
struct TYPE_4__ {int bytesperline; int sizeimage; } ;


 int EINVAL ;
 int FMT_FLAGS_YUV ;
 int V4L2_FIELD_NONE ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ ffs (int ) ;
 struct fimc_fmt* fimc_lite_find_format (int *,int *,int,int ) ;
 int v4l_bound_align_image (int*,int,int ,scalar_t__,int*,int ,int ,int ,int ) ;

__attribute__((used)) static int fimc_lite_try_fmt(struct fimc_lite *fimc,
        struct v4l2_pix_format_mplane *pixm,
        const struct fimc_fmt **ffmt)
{
 u32 bpl = pixm->plane_fmt[0].bytesperline;
 struct flite_drvdata *dd = fimc->dd;
 const struct fimc_fmt *inp_fmt = fimc->inp_frame.fmt;
 const struct fimc_fmt *fmt;

 if (WARN_ON(inp_fmt == ((void*)0)))
  return -EINVAL;





 if (inp_fmt->flags & FMT_FLAGS_YUV)
  fmt = fimc_lite_find_format(&pixm->pixelformat, ((void*)0),
      inp_fmt->flags, 0);
 else
  fmt = inp_fmt;

 if (WARN_ON(fmt == ((void*)0)))
  return -EINVAL;
 if (ffmt)
  *ffmt = fmt;
 v4l_bound_align_image(&pixm->width, 8, dd->max_width,
         ffs(dd->out_width_align) - 1,
         &pixm->height, 0, dd->max_height, 0, 0);

 if ((bpl == 0 || ((bpl * 8) / fmt->depth[0]) < pixm->width))
  pixm->plane_fmt[0].bytesperline = (pixm->width *
         fmt->depth[0]) / 8;

 if (pixm->plane_fmt[0].sizeimage == 0)
  pixm->plane_fmt[0].sizeimage = (pixm->width * pixm->height *
      fmt->depth[0]) / 8;
 pixm->num_planes = fmt->memplanes;
 pixm->pixelformat = fmt->fourcc;
 pixm->colorspace = fmt->colorspace;
 pixm->field = V4L2_FIELD_NONE;
 return 0;
}
