
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpe_fmt {int types; scalar_t__ fourcc; TYPE_2__** vpdma_fmt; scalar_t__ coplanar; } ;
struct vpe_ctx {int dev; } ;
struct v4l2_plane_pix_format {unsigned int bytesperline; int sizeimage; int reserved; } ;
struct v4l2_pix_format_mplane {scalar_t__ pixelformat; scalar_t__ field; int width; int height; int num_planes; struct v4l2_plane_pix_format* plane_fmt; int reserved; scalar_t__ colorspace; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int depth; } ;


 unsigned int ALIGN (unsigned int,int ) ;
 int EINVAL ;
 int H_ALIGN ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int S_ALIGN ;
 scalar_t__ V4L2_COLORSPACE_REC709 ;
 scalar_t__ V4L2_COLORSPACE_SMPTE170M ;
 scalar_t__ V4L2_COLORSPACE_SRGB ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_FIELD_SEQ_TB ;
 scalar_t__ V4L2_PIX_FMT_BGR24 ;
 scalar_t__ V4L2_PIX_FMT_BGR32 ;
 scalar_t__ V4L2_PIX_FMT_RGB24 ;
 scalar_t__ V4L2_PIX_FMT_RGB32 ;
 int VPDMA_DESC_ALIGN ;
 int VPDMA_STRIDE_ALIGN ;
 size_t VPE_CHROMA ;
 size_t VPE_LUMA ;
 unsigned int ilog2 (unsigned int) ;
 int memset (int ,int ,int) ;
 unsigned int roundup_pow_of_two (int) ;
 int v4l_bound_align_image (int*,int ,int ,unsigned int,int*,int ,int ,int ,int ) ;
 int vpe_err (int ,char*,scalar_t__) ;

__attribute__((used)) static int __vpe_try_fmt(struct vpe_ctx *ctx, struct v4l2_format *f,
         struct vpe_fmt *fmt, int type)
{
 struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
 struct v4l2_plane_pix_format *plane_fmt;
 unsigned int w_align;
 int i, depth, depth_bytes, height;
 unsigned int stride = 0;

 if (!fmt || !(fmt->types & type)) {
  vpe_err(ctx->dev, "Fourcc format (0x%08x) invalid.\n",
   pix->pixelformat);
  return -EINVAL;
 }

 if (pix->field != V4L2_FIELD_NONE && pix->field != V4L2_FIELD_ALTERNATE
   && pix->field != V4L2_FIELD_SEQ_TB)
  pix->field = V4L2_FIELD_NONE;

 depth = fmt->vpdma_fmt[VPE_LUMA]->depth;






 depth_bytes = depth >> 3;

 if (depth_bytes == 3) {




  w_align = 4;
 } else {
  w_align = roundup_pow_of_two(VPDMA_DESC_ALIGN / depth_bytes);
  w_align = ilog2(w_align);
 }

 v4l_bound_align_image(&pix->width, MIN_W, MAX_W, w_align,
         &pix->height, MIN_H, MAX_H, H_ALIGN,
         S_ALIGN);

 if (!pix->num_planes)
  pix->num_planes = fmt->coplanar ? 2 : 1;
 else if (pix->num_planes > 1 && !fmt->coplanar)
  pix->num_planes = 1;

 pix->pixelformat = fmt->fourcc;





 if (pix->field == V4L2_FIELD_SEQ_TB)
  height = pix->height / 2;
 else
  height = pix->height;

 if (!pix->colorspace) {
  if (fmt->fourcc == V4L2_PIX_FMT_RGB24 ||
    fmt->fourcc == V4L2_PIX_FMT_BGR24 ||
    fmt->fourcc == V4L2_PIX_FMT_RGB32 ||
    fmt->fourcc == V4L2_PIX_FMT_BGR32) {
   pix->colorspace = V4L2_COLORSPACE_SRGB;
  } else {
   if (height > 1280)
    pix->colorspace = V4L2_COLORSPACE_REC709;
   else
    pix->colorspace = V4L2_COLORSPACE_SMPTE170M;
  }
 }

 memset(pix->reserved, 0, sizeof(pix->reserved));
 for (i = 0; i < pix->num_planes; i++) {
  plane_fmt = &pix->plane_fmt[i];
  depth = fmt->vpdma_fmt[i]->depth;

  stride = (pix->width * fmt->vpdma_fmt[VPE_LUMA]->depth) >> 3;
  if (stride > plane_fmt->bytesperline)
   plane_fmt->bytesperline = stride;

  plane_fmt->bytesperline = ALIGN(plane_fmt->bytesperline,
      VPDMA_STRIDE_ALIGN);

  if (i == VPE_LUMA) {
   plane_fmt->sizeimage = pix->height *
            plane_fmt->bytesperline;

   if (pix->num_planes == 1 && fmt->coplanar)
    plane_fmt->sizeimage += pix->height *
     plane_fmt->bytesperline *
     fmt->vpdma_fmt[VPE_CHROMA]->depth >> 3;

  } else {
   plane_fmt->sizeimage = (pix->height *
            plane_fmt->bytesperline *
            depth) >> 3;
  }
  memset(plane_fmt->reserved, 0, sizeof(plane_fmt->reserved));
 }

 return 0;
}
