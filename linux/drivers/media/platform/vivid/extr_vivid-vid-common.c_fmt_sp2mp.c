
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_plane_pix_format {int reserved; int bytesperline; int sizeimage; } ;
struct v4l2_pix_format_mplane {int num_planes; int flags; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int pixelformat; int height; int width; int reserved; struct v4l2_plane_pix_format* plane_fmt; } ;
struct v4l2_pix_format {int bytesperline; int sizeimage; int flags; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int field; int pixelformat; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int memset (int ,int ,int) ;

void fmt_sp2mp(const struct v4l2_format *sp_fmt, struct v4l2_format *mp_fmt)
{
 struct v4l2_pix_format_mplane *mp = &mp_fmt->fmt.pix_mp;
 struct v4l2_plane_pix_format *ppix = &mp->plane_fmt[0];
 const struct v4l2_pix_format *pix = &sp_fmt->fmt.pix;
 bool is_out = sp_fmt->type == V4L2_BUF_TYPE_VIDEO_OUTPUT;

 memset(mp->reserved, 0, sizeof(mp->reserved));
 mp_fmt->type = is_out ? V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE :
      V4L2_CAP_VIDEO_CAPTURE_MPLANE;
 mp->width = pix->width;
 mp->height = pix->height;
 mp->pixelformat = pix->pixelformat;
 mp->field = pix->field;
 mp->colorspace = pix->colorspace;
 mp->xfer_func = pix->xfer_func;

 mp->ycbcr_enc = pix->ycbcr_enc;
 mp->quantization = pix->quantization;
 mp->num_planes = 1;
 mp->flags = pix->flags;
 ppix->sizeimage = pix->sizeimage;
 ppix->bytesperline = pix->bytesperline;
 memset(ppix->reserved, 0, sizeof(ppix->reserved));
}
