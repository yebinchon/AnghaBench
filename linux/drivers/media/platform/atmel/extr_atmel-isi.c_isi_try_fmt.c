
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int field; int pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct isi_format {int bpp; int mbus_code; int fourcc; } ;
struct TYPE_4__ {int subdev; } ;
struct atmel_isi {int num_user_formats; TYPE_2__ entity; struct isi_format** user_formats; } ;


 int MAX_SUPPORT_HEIGHT ;
 int MAX_SUPPORT_WIDTH ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 void* clamp (int,unsigned int,int ) ;
 struct isi_format* find_format_by_fourcc (struct atmel_isi*,int ) ;
 int pad ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int isi_try_fmt(struct atmel_isi *isi, struct v4l2_format *f,
         const struct isi_format **current_fmt)
{
 const struct isi_format *isi_fmt;
 struct v4l2_pix_format *pixfmt = &f->fmt.pix;
 struct v4l2_subdev_pad_config pad_cfg;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 int ret;

 isi_fmt = find_format_by_fourcc(isi, pixfmt->pixelformat);
 if (!isi_fmt) {
  isi_fmt = isi->user_formats[isi->num_user_formats - 1];
  pixfmt->pixelformat = isi_fmt->fourcc;
 }


 pixfmt->width = clamp(pixfmt->width, 0U, MAX_SUPPORT_WIDTH);
 pixfmt->height = clamp(pixfmt->height, 0U, MAX_SUPPORT_HEIGHT);

 v4l2_fill_mbus_format(&format.format, pixfmt, isi_fmt->mbus_code);
 ret = v4l2_subdev_call(isi->entity.subdev, pad, set_fmt,
          &pad_cfg, &format);
 if (ret < 0)
  return ret;

 v4l2_fill_pix_format(pixfmt, &format.format);

 pixfmt->field = V4L2_FIELD_NONE;
 pixfmt->bytesperline = pixfmt->width * isi_fmt->bpp;
 pixfmt->sizeimage = pixfmt->bytesperline * pixfmt->height;

 if (current_fmt)
  *current_fmt = isi_fmt;

 return 0;
}
