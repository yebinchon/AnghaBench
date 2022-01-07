
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vimc_pix_map {int bpp; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; scalar_t__ field; int pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ field; int pixelformat; } ;


 scalar_t__ V4L2_FIELD_ANY ;
 int VIMC_FRAME_MAX_HEIGHT ;
 int VIMC_FRAME_MAX_WIDTH ;
 int VIMC_FRAME_MIN_HEIGHT ;
 int VIMC_FRAME_MIN_WIDTH ;
 int clamp_t (int ,int,int ,int ) ;
 TYPE_2__ fmt_default ;
 int u32 ;
 int vimc_colorimetry_clamp (struct v4l2_pix_format*) ;
 struct vimc_pix_map* vimc_pix_map_by_pixelformat (int ) ;

__attribute__((used)) static int vimc_cap_try_fmt_vid_cap(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct v4l2_pix_format *format = &f->fmt.pix;
 const struct vimc_pix_map *vpix;

 format->width = clamp_t(u32, format->width, VIMC_FRAME_MIN_WIDTH,
    VIMC_FRAME_MAX_WIDTH) & ~1;
 format->height = clamp_t(u32, format->height, VIMC_FRAME_MIN_HEIGHT,
     VIMC_FRAME_MAX_HEIGHT) & ~1;


 vpix = vimc_pix_map_by_pixelformat(format->pixelformat);
 if (!vpix) {
  format->pixelformat = fmt_default.pixelformat;
  vpix = vimc_pix_map_by_pixelformat(format->pixelformat);
 }

 format->bytesperline = format->width * vpix->bpp;
 format->sizeimage = format->bytesperline * format->height;

 if (format->field == V4L2_FIELD_ANY)
  format->field = fmt_default.field;

 vimc_colorimetry_clamp(format);

 return 0;
}
