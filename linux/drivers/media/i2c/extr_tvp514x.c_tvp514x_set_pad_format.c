
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {scalar_t__ field; scalar_t__ code; scalar_t__ colorspace; scalar_t__ width; scalar_t__ height; } ;
struct v4l2_subdev_format {TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {size_t current_std; TYPE_1__ format; } ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;


 int EINVAL ;
 scalar_t__ MEDIA_BUS_FMT_UYVY8_2X8 ;
 scalar_t__ V4L2_COLORSPACE_SMPTE170M ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 TYPE_2__* tvp514x_std_list ;

__attribute__((used)) static int tvp514x_set_pad_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);

 if (fmt->format.field != V4L2_FIELD_INTERLACED ||
     fmt->format.code != MEDIA_BUS_FMT_UYVY8_2X8 ||
     fmt->format.colorspace != V4L2_COLORSPACE_SMPTE170M ||
     fmt->format.width != tvp514x_std_list[decoder->current_std].width ||
     fmt->format.height != tvp514x_std_list[decoder->current_std].height)
  return -EINVAL;

 decoder->format = fmt->format;

 return 0;
}
