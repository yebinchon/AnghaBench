
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_inst {int dummy; } ;
struct venus_format {int num_planes; } ;
struct v4l2_plane_pix_format {void* bytesperline; void* sizeimage; int reserved; } ;
struct v4l2_pix_format_mplane {scalar_t__ field; void* width; void* height; int pixelformat; scalar_t__ flags; int num_planes; int reserved; struct v4l2_plane_pix_format* plane_fmt; } ;
struct TYPE_2__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;


 void* ALIGN (void*,int) ;
 int SZ_4K ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_NV12 ;
 void* clamp (void*,int ,int ) ;
 struct venus_format* find_format (struct venus_inst*,int ,int ) ;
 int frame_height_max (struct venus_inst*) ;
 int frame_height_min (struct venus_inst*) ;
 int frame_width_max (struct venus_inst*) ;
 int frame_width_min (struct venus_inst*) ;
 void* max (void*,int ) ;
 int memset (int ,int ,int) ;
 int venus_helper_get_framesz (int ,void*,void*) ;

__attribute__((used)) static const struct venus_format *
venc_try_fmt_common(struct venus_inst *inst, struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pixmp = &f->fmt.pix_mp;
 struct v4l2_plane_pix_format *pfmt = pixmp->plane_fmt;
 const struct venus_format *fmt;
 u32 sizeimage;

 memset(pfmt[0].reserved, 0, sizeof(pfmt[0].reserved));
 memset(pixmp->reserved, 0, sizeof(pixmp->reserved));

 fmt = find_format(inst, pixmp->pixelformat, f->type);
 if (!fmt) {
  if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
   pixmp->pixelformat = V4L2_PIX_FMT_H264;
  else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
   pixmp->pixelformat = V4L2_PIX_FMT_NV12;
  else
   return ((void*)0);
  fmt = find_format(inst, pixmp->pixelformat, f->type);
 }

 pixmp->width = clamp(pixmp->width, frame_width_min(inst),
        frame_width_max(inst));
 pixmp->height = clamp(pixmp->height, frame_height_min(inst),
         frame_height_max(inst));

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  pixmp->height = ALIGN(pixmp->height, 32);

 pixmp->width = ALIGN(pixmp->width, 2);
 pixmp->height = ALIGN(pixmp->height, 2);

 if (pixmp->field == V4L2_FIELD_ANY)
  pixmp->field = V4L2_FIELD_NONE;
 pixmp->num_planes = fmt->num_planes;
 pixmp->flags = 0;

 sizeimage = venus_helper_get_framesz(pixmp->pixelformat,
          pixmp->width,
          pixmp->height);
 pfmt[0].sizeimage = max(ALIGN(pfmt[0].sizeimage, SZ_4K), sizeimage);

 if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  pfmt[0].bytesperline = ALIGN(pixmp->width, 128);
 else
  pfmt[0].bytesperline = 0;

 return fmt;
}
