
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_rect {int width; int height; void* left; void* top; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int width; int height; int bytesperline; int sizeimage; int field; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int source; } ;
struct stm32_dcmi {int num_of_sd_formats; struct v4l2_rect crop; TYPE_2__ entity; scalar_t__ num_of_sd_framesizes; int do_crop; struct dcmi_format** sd_formats; } ;
struct dcmi_framesize {int width; int height; } ;
struct dcmi_format {scalar_t__ fourcc; int bpp; int mbus_code; } ;


 int ENODATA ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int __find_outer_frame_size (struct stm32_dcmi*,struct v4l2_pix_format*,struct dcmi_framesize*) ;
 void* clamp (int,int ,int ) ;
 void* clamp_t (int ,void*,int ,int) ;
 struct dcmi_format* find_format_by_fourcc (struct stm32_dcmi*,scalar_t__) ;
 int pad ;
 int s32 ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 int v4l2_rect_map_inside (struct v4l2_rect*,struct v4l2_rect*) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int dcmi_try_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f,
   const struct dcmi_format **sd_format,
   struct dcmi_framesize *sd_framesize)
{
 const struct dcmi_format *sd_fmt;
 struct dcmi_framesize sd_fsize;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_subdev_pad_config pad_cfg;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 bool do_crop;
 int ret;

 sd_fmt = find_format_by_fourcc(dcmi, pix->pixelformat);
 if (!sd_fmt) {
  if (!dcmi->num_of_sd_formats)
   return -ENODATA;

  sd_fmt = dcmi->sd_formats[dcmi->num_of_sd_formats - 1];
  pix->pixelformat = sd_fmt->fourcc;
 }


 pix->width = clamp(pix->width, MIN_WIDTH, MAX_WIDTH);
 pix->height = clamp(pix->height, MIN_HEIGHT, MAX_HEIGHT);


 do_crop = dcmi->do_crop && (pix->pixelformat != V4L2_PIX_FMT_JPEG);

 if (do_crop && dcmi->num_of_sd_framesizes) {
  struct dcmi_framesize outer_sd_fsize;




  __find_outer_frame_size(dcmi, pix, &outer_sd_fsize);
  pix->width = outer_sd_fsize.width;
  pix->height = outer_sd_fsize.height;
 }

 v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
 ret = v4l2_subdev_call(dcmi->entity.source, pad, set_fmt,
          &pad_cfg, &format);
 if (ret < 0)
  return ret;


 v4l2_fill_pix_format(pix, &format.format);


 sd_fsize.width = pix->width;
 sd_fsize.height = pix->height;

 if (do_crop) {
  struct v4l2_rect c = dcmi->crop;
  struct v4l2_rect max_rect;





  max_rect.top = 0;
  max_rect.left = 0;
  max_rect.width = pix->width;
  max_rect.height = pix->height;
  v4l2_rect_map_inside(&c, &max_rect);
  c.top = clamp_t(s32, c.top, 0, pix->height - c.height);
  c.left = clamp_t(s32, c.left, 0, pix->width - c.width);
  dcmi->crop = c;


  pix->width = dcmi->crop.width;
  pix->height = dcmi->crop.height;
 }

 pix->field = V4L2_FIELD_NONE;
 pix->bytesperline = pix->width * sd_fmt->bpp;
 pix->sizeimage = pix->bytesperline * pix->height;

 if (sd_format)
  *sd_format = sd_fmt;
 if (sd_framesize)
  *sd_framesize = sd_fsize;

 return 0;
}
