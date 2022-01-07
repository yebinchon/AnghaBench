
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format {scalar_t__ field; int width; int height; int sizeimage; int bytesperline; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct s5p_jpeg_fmt {scalar_t__ fourcc; int colplanes; int depth; int v_align; int h_align; } ;
struct s5p_jpeg_ctx {int dummy; } ;


 int EINVAL ;
 int FMT_TYPE_OUTPUT ;
 int PAGE_SIZE ;
 int S5P_JPEG_MAX_HEIGHT ;
 int S5P_JPEG_MAX_WIDTH ;
 int S5P_JPEG_MIN_HEIGHT ;
 int S5P_JPEG_MIN_WIDTH ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int jpeg_bound_align_image (struct s5p_jpeg_ctx*,int*,int ,int ,int ,int*,int ,int ,int ) ;

__attribute__((used)) static int vidioc_try_fmt(struct v4l2_format *f, struct s5p_jpeg_fmt *fmt,
     struct s5p_jpeg_ctx *ctx, int q_type)
{
 struct v4l2_pix_format *pix = &f->fmt.pix;

 if (pix->field == V4L2_FIELD_ANY)
  pix->field = V4L2_FIELD_NONE;
 else if (pix->field != V4L2_FIELD_NONE)
  return -EINVAL;




 if (q_type == FMT_TYPE_OUTPUT)
  jpeg_bound_align_image(ctx, &pix->width, S5P_JPEG_MIN_WIDTH,
           S5P_JPEG_MAX_WIDTH, 0,
           &pix->height, S5P_JPEG_MIN_HEIGHT,
           S5P_JPEG_MAX_HEIGHT, 0);
 else
  jpeg_bound_align_image(ctx, &pix->width, S5P_JPEG_MIN_WIDTH,
           S5P_JPEG_MAX_WIDTH, fmt->h_align,
           &pix->height, S5P_JPEG_MIN_HEIGHT,
           S5P_JPEG_MAX_HEIGHT, fmt->v_align);

 if (fmt->fourcc == V4L2_PIX_FMT_JPEG) {
  if (pix->sizeimage <= 0)
   pix->sizeimage = PAGE_SIZE;
  pix->bytesperline = 0;
 } else {
  u32 bpl = pix->bytesperline;

  if (fmt->colplanes > 1 && bpl < pix->width)
   bpl = pix->width;

  if (fmt->colplanes == 1 &&
      (bpl << 3) / fmt->depth < pix->width)
   bpl = (pix->width * fmt->depth) >> 3;

  pix->bytesperline = bpl;
  pix->sizeimage = (pix->width * pix->height * fmt->depth) >> 3;
 }

 return 0;
}
