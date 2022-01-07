
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {scalar_t__ field; scalar_t__ colorspace; void* height; void* width; int num_planes; int pixelformat; } ;
struct fdp1_fmt {int types; int vsub; int hsub; int num_planes; int fourcc; } ;
struct fdp1_ctx {int dummy; } ;


 int FDP1_MAX_H ;
 int FDP1_MAX_W ;
 int FDP1_MIN_H ;
 int FDP1_MIN_W ;
 int FDP1_OUTPUT ;
 scalar_t__ V4L2_COLORSPACE_DEFAULT ;
 scalar_t__ V4L2_COLORSPACE_SMPTE170M ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_HAS_BOTH (scalar_t__) ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_YUYV ;
 void* clamp (unsigned int,int,int) ;
 int fdp1_compute_stride (struct v4l2_pix_format_mplane*,struct fdp1_fmt const*) ;
 struct fdp1_fmt* fdp1_find_format (int ) ;
 unsigned int round_down (void*,int ) ;

__attribute__((used)) static void fdp1_try_fmt_output(struct fdp1_ctx *ctx,
    const struct fdp1_fmt **fmtinfo,
    struct v4l2_pix_format_mplane *pix)
{
 const struct fdp1_fmt *fmt;
 unsigned int width;
 unsigned int height;


 fmt = fdp1_find_format(pix->pixelformat);
 if (!fmt || !(fmt->types & FDP1_OUTPUT))
  fmt = fdp1_find_format(V4L2_PIX_FMT_YUYV);

 if (fmtinfo)
  *fmtinfo = fmt;

 pix->pixelformat = fmt->fourcc;
 pix->num_planes = fmt->num_planes;





 if (pix->field != V4L2_FIELD_NONE &&
     pix->field != V4L2_FIELD_ALTERNATE &&
     !V4L2_FIELD_HAS_BOTH(pix->field))
  pix->field = V4L2_FIELD_INTERLACED;
 if (pix->colorspace == V4L2_COLORSPACE_DEFAULT)
  pix->colorspace = V4L2_COLORSPACE_SMPTE170M;







 width = round_down(pix->width, fmt->hsub);
 pix->width = clamp(width, FDP1_MIN_W, FDP1_MAX_W);

 height = round_down(pix->height, fmt->vsub);
 if (pix->field == V4L2_FIELD_ALTERNATE)
  pix->height = clamp(height, FDP1_MIN_H / 2, FDP1_MAX_H / 2);
 else
  pix->height = clamp(height, FDP1_MIN_H, FDP1_MAX_H);

 fdp1_compute_stride(pix, fmt);
}
