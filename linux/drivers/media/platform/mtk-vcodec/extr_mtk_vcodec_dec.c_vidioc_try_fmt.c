
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int num_planes; int height; int width; int reserved; scalar_t__ flags; TYPE_2__* plane_fmt; int field; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct mtk_video_fmt {int num_planes; } ;
struct TYPE_4__ {int bytesperline; int sizeimage; int * reserved; } ;


 int MTK_VDEC_MAX_H ;
 int MTK_VDEC_MAX_W ;
 int MTK_VDEC_MIN_H ;
 int MTK_VDEC_MIN_W ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_FIELD_NONE ;
 void* clamp (int,int ,int) ;
 int memset (int *,int,int) ;
 int mtk_v4l2_debug (int ,char*,int,int,int,int,int) ;
 int v4l_bound_align_image (int*,int ,int,int,int*,int ,int,int,int) ;

__attribute__((used)) static int vidioc_try_fmt(struct v4l2_format *f,
     const struct mtk_video_fmt *fmt)
{
 struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
 int i;

 pix_fmt_mp->field = V4L2_FIELD_NONE;

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  pix_fmt_mp->num_planes = 1;
  pix_fmt_mp->plane_fmt[0].bytesperline = 0;
 } else if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  int tmp_w, tmp_h;

  pix_fmt_mp->height = clamp(pix_fmt_mp->height,
     MTK_VDEC_MIN_H,
     MTK_VDEC_MAX_H);
  pix_fmt_mp->width = clamp(pix_fmt_mp->width,
     MTK_VDEC_MIN_W,
     MTK_VDEC_MAX_W);







  tmp_w = pix_fmt_mp->width;
  tmp_h = pix_fmt_mp->height;
  v4l_bound_align_image(&pix_fmt_mp->width,
     MTK_VDEC_MIN_W,
     MTK_VDEC_MAX_W, 6,
     &pix_fmt_mp->height,
     MTK_VDEC_MIN_H,
     MTK_VDEC_MAX_H, 6, 9);

  if (pix_fmt_mp->width < tmp_w &&
   (pix_fmt_mp->width + 64) <= MTK_VDEC_MAX_W)
   pix_fmt_mp->width += 64;
  if (pix_fmt_mp->height < tmp_h &&
   (pix_fmt_mp->height + 64) <= MTK_VDEC_MAX_H)
   pix_fmt_mp->height += 64;

  mtk_v4l2_debug(0,
   "before resize width=%d, height=%d, after resize width=%d, height=%d, sizeimage=%d",
   tmp_w, tmp_h, pix_fmt_mp->width,
   pix_fmt_mp->height,
   pix_fmt_mp->width * pix_fmt_mp->height);

  pix_fmt_mp->num_planes = fmt->num_planes;
  pix_fmt_mp->plane_fmt[0].sizeimage =
    pix_fmt_mp->width * pix_fmt_mp->height;
  pix_fmt_mp->plane_fmt[0].bytesperline = pix_fmt_mp->width;

  if (pix_fmt_mp->num_planes == 2) {
   pix_fmt_mp->plane_fmt[1].sizeimage =
    (pix_fmt_mp->width * pix_fmt_mp->height) / 2;
   pix_fmt_mp->plane_fmt[1].bytesperline =
    pix_fmt_mp->width;
  }
 }

 for (i = 0; i < pix_fmt_mp->num_planes; i++)
  memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
      sizeof(pix_fmt_mp->plane_fmt[0].reserved));

 pix_fmt_mp->flags = 0;
 memset(&pix_fmt_mp->reserved, 0x0, sizeof(pix_fmt_mp->reserved));
 return 0;
}
