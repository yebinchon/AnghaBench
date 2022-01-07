
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vicodec_ctx {scalar_t__ is_stateless; } ;
struct v4l2_plane_pix_format {int bytesperline; int sizeimage; int reserved; } ;
struct v4l2_pix_format_mplane {int num_planes; int width; int height; int reserved; int pixelformat; void* field; struct v4l2_plane_pix_format* plane_fmt; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int pixelformat; void* field; } ;
struct v4l2_fwht_pixfmt_info {int bytesperline_mult; int sizeimage_mult; int sizeimage_div; int height_div; int width_div; } ;
struct TYPE_2__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct fwht_cframe_hdr {int dummy; } ;


 int EINVAL ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;




 void* V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_FWHT ;
 int V4L2_PIX_FMT_FWHT_STATELESS ;
 void* clamp (int,int ,int ) ;
 struct v4l2_fwht_pixfmt_info* find_fmt (int ) ;
 int memset (int ,int ,int) ;
 struct v4l2_fwht_pixfmt_info pixfmt_fwht ;
 struct v4l2_fwht_pixfmt_info pixfmt_stateless_fwht ;
 void* vic_round_dim (int,int ) ;

__attribute__((used)) static int vidioc_try_fmt(struct vicodec_ctx *ctx, struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pix_mp;
 struct v4l2_pix_format *pix;
 struct v4l2_plane_pix_format *plane;
 const struct v4l2_fwht_pixfmt_info *info = ctx->is_stateless ?
  &pixfmt_stateless_fwht : &pixfmt_fwht;

 switch (f->type) {
 case 131:
 case 129:
  pix = &f->fmt.pix;
  if (pix->pixelformat != V4L2_PIX_FMT_FWHT &&
      pix->pixelformat != V4L2_PIX_FMT_FWHT_STATELESS)
   info = find_fmt(pix->pixelformat);

  pix->width = clamp(pix->width, MIN_WIDTH, MAX_WIDTH);
  pix->width = vic_round_dim(pix->width, info->width_div);

  pix->height = clamp(pix->height, MIN_HEIGHT, MAX_HEIGHT);
  pix->height = vic_round_dim(pix->height, info->height_div);

  pix->field = V4L2_FIELD_NONE;
  pix->bytesperline =
   pix->width * info->bytesperline_mult;
  pix->sizeimage = pix->width * pix->height *
   info->sizeimage_mult / info->sizeimage_div;
  if (pix->pixelformat == V4L2_PIX_FMT_FWHT)
   pix->sizeimage += sizeof(struct fwht_cframe_hdr);
  break;
 case 130:
 case 128:
  pix_mp = &f->fmt.pix_mp;
  plane = pix_mp->plane_fmt;
  if (pix_mp->pixelformat != V4L2_PIX_FMT_FWHT &&
      pix_mp->pixelformat != V4L2_PIX_FMT_FWHT_STATELESS)
   info = find_fmt(pix_mp->pixelformat);
  pix_mp->num_planes = 1;

  pix_mp->width = clamp(pix_mp->width, MIN_WIDTH, MAX_WIDTH);
  pix_mp->width = vic_round_dim(pix_mp->width, info->width_div);

  pix_mp->height = clamp(pix_mp->height, MIN_HEIGHT, MAX_HEIGHT);
  pix_mp->height = vic_round_dim(pix_mp->height,
            info->height_div);

  pix_mp->field = V4L2_FIELD_NONE;
  plane->bytesperline =
   pix_mp->width * info->bytesperline_mult;
  plane->sizeimage = pix_mp->width * pix_mp->height *
   info->sizeimage_mult / info->sizeimage_div;
  if (pix_mp->pixelformat == V4L2_PIX_FMT_FWHT)
   plane->sizeimage += sizeof(struct fwht_cframe_hdr);
  memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));
  memset(plane->reserved, 0, sizeof(plane->reserved));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
