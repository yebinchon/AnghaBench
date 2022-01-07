
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int width; int height; int code; } ;
struct v4l2_subdev_format {TYPE_4__ format; int which; } ;
struct TYPE_6__ {int width; int height; int pixelformat; int colorspace; int sizeimage; scalar_t__ bytesperline; int field; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; int type; } ;
struct go7007 {int width; int height; int encoder_h_halve; int encoder_v_halve; int encoder_subsample; int v4l2_dev; TYPE_1__* board_info; int encoder_v_offset; int encoder_h_offset; int format; } ;
struct TYPE_5__ {int sensor_flags; int sensor_v_offset; int sensor_h_offset; } ;


 int EINVAL ;
 int GO7007_BUF_SIZE ;
 int GO7007_SENSOR_SCALING ;
 int MEDIA_BUS_FMT_FIXED ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int call_all (int *,int ,int ,int *,struct v4l2_subdev_format*) ;
 int get_resolution (struct go7007*,int*,int*) ;
 int memset (struct v4l2_format*,int ,int) ;
 int pad ;
 int set_fmt ;
 int valid_pixelformat (int ) ;

__attribute__((used)) static int set_capture_size(struct go7007 *go, struct v4l2_format *fmt, int try)
{
 int sensor_height = 0, sensor_width = 0;
 int width, height;

 if (fmt != ((void*)0) && !valid_pixelformat(fmt->fmt.pix.pixelformat))
  return -EINVAL;

 get_resolution(go, &sensor_width, &sensor_height);

 if (fmt == ((void*)0)) {
  width = sensor_width;
  height = sensor_height;
 } else if (go->board_info->sensor_flags & GO7007_SENSOR_SCALING) {
  if (fmt->fmt.pix.width > sensor_width)
   width = sensor_width;
  else if (fmt->fmt.pix.width < 144)
   width = 144;
  else
   width = fmt->fmt.pix.width & ~0x0f;

  if (fmt->fmt.pix.height > sensor_height)
   height = sensor_height;
  else if (fmt->fmt.pix.height < 96)
   height = 96;
  else
   height = fmt->fmt.pix.height & ~0x0f;
 } else {
  width = fmt->fmt.pix.width;

  if (width <= sensor_width / 4) {
   width = sensor_width / 4;
   height = sensor_height / 4;
  } else if (width <= sensor_width / 2) {
   width = sensor_width / 2;
   height = sensor_height / 2;
  } else {
   width = sensor_width;
   height = sensor_height;
  }
  width &= ~0xf;
  height &= ~0xf;
 }

 if (fmt != ((void*)0)) {
  u32 pixelformat = fmt->fmt.pix.pixelformat;

  memset(fmt, 0, sizeof(*fmt));
  fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  fmt->fmt.pix.width = width;
  fmt->fmt.pix.height = height;
  fmt->fmt.pix.pixelformat = pixelformat;
  fmt->fmt.pix.field = V4L2_FIELD_NONE;
  fmt->fmt.pix.bytesperline = 0;
  fmt->fmt.pix.sizeimage = GO7007_BUF_SIZE;
  fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 }

 if (try)
  return 0;

 if (fmt)
  go->format = fmt->fmt.pix.pixelformat;
 go->width = width;
 go->height = height;
 go->encoder_h_offset = go->board_info->sensor_h_offset;
 go->encoder_v_offset = go->board_info->sensor_v_offset;

 if (go->board_info->sensor_flags & GO7007_SENSOR_SCALING) {
  struct v4l2_subdev_format format = {
   .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  };

  format.format.code = MEDIA_BUS_FMT_FIXED;
  format.format.width = fmt ? fmt->fmt.pix.width : width;
  format.format.height = height;
  go->encoder_h_halve = 0;
  go->encoder_v_halve = 0;
  go->encoder_subsample = 0;
  call_all(&go->v4l2_dev, pad, set_fmt, ((void*)0), &format);
 } else {
  if (width <= sensor_width / 4) {
   go->encoder_h_halve = 1;
   go->encoder_v_halve = 1;
   go->encoder_subsample = 1;
  } else if (width <= sensor_width / 2) {
   go->encoder_h_halve = 1;
   go->encoder_v_halve = 1;
   go->encoder_subsample = 0;
  } else {
   go->encoder_h_halve = 0;
   go->encoder_v_halve = 0;
   go->encoder_subsample = 0;
  }
 }
 return 0;
}
