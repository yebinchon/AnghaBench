
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int pixelformat; } ;
struct TYPE_2__ {int source; } ;
struct stm32_dcmi {int num_of_sd_formats; TYPE_1__ entity; struct dcmi_format** sd_formats; } ;
struct dcmi_format {int mbus_code; int fourcc; } ;


 int ENODATA ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct dcmi_format* find_format_by_fourcc (struct stm32_dcmi*,int ) ;
 int pad ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int dcmi_set_sensor_format(struct stm32_dcmi *dcmi,
      struct v4l2_pix_format *pix)
{
 const struct dcmi_format *sd_fmt;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 struct v4l2_subdev_pad_config pad_cfg;
 int ret;

 sd_fmt = find_format_by_fourcc(dcmi, pix->pixelformat);
 if (!sd_fmt) {
  if (!dcmi->num_of_sd_formats)
   return -ENODATA;

  sd_fmt = dcmi->sd_formats[dcmi->num_of_sd_formats - 1];
  pix->pixelformat = sd_fmt->fourcc;
 }

 v4l2_fill_mbus_format(&format.format, pix, sd_fmt->mbus_code);
 ret = v4l2_subdev_call(dcmi->entity.source, pad, set_fmt,
          &pad_cfg, &format);
 if (ret < 0)
  return ret;

 return 0;
}
