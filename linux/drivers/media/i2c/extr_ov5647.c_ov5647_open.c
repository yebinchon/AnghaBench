
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {void* height; void* width; int top; int left; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; void* height; void* width; int code; } ;


 int MEDIA_BUS_FMT_SBGGR8_1X8 ;
 int OV5647_COLUMN_START_DEF ;
 int OV5647_ROW_START_DEF ;
 void* OV5647_WINDOW_HEIGHT_DEF ;
 void* OV5647_WINDOW_WIDTH_DEF ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (struct v4l2_subdev*,int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int ov5647_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *format =
    v4l2_subdev_get_try_format(sd, fh->pad, 0);
 struct v4l2_rect *crop =
    v4l2_subdev_get_try_crop(sd, fh->pad, 0);

 crop->left = OV5647_COLUMN_START_DEF;
 crop->top = OV5647_ROW_START_DEF;
 crop->width = OV5647_WINDOW_WIDTH_DEF;
 crop->height = OV5647_WINDOW_HEIGHT_DEF;

 format->code = MEDIA_BUS_FMT_SBGGR8_1X8;

 format->width = OV5647_WINDOW_WIDTH_DEF;
 format->height = OV5647_WINDOW_HEIGHT_DEF;
 format->field = V4L2_FIELD_NONE;
 format->colorspace = V4L2_COLORSPACE_SRGB;

 return 0;
}
