
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {scalar_t__ top; scalar_t__ left; int height; int width; } ;
struct v4l2_mbus_framefmt {int field; int height; int width; int code; int colorspace; } ;
struct TYPE_2__ {int code; int colorspace; } ;


 int S5K6AA_OUT_HEIGHT_DEF ;
 int S5K6AA_OUT_WIDTH_DEF ;
 int S5K6AA_WIN_HEIGHT_MAX ;
 int S5K6AA_WIN_WIDTH_MAX ;
 int V4L2_FIELD_NONE ;
 TYPE_1__* s5k6aa_formats ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (struct v4l2_subdev*,int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int s5k6aa_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *format = v4l2_subdev_get_try_format(sd, fh->pad, 0);
 struct v4l2_rect *crop = v4l2_subdev_get_try_crop(sd, fh->pad, 0);

 format->colorspace = s5k6aa_formats[0].colorspace;
 format->code = s5k6aa_formats[0].code;
 format->width = S5K6AA_OUT_WIDTH_DEF;
 format->height = S5K6AA_OUT_HEIGHT_DEF;
 format->field = V4L2_FIELD_NONE;

 crop->width = S5K6AA_WIN_WIDTH_MAX;
 crop->height = S5K6AA_WIN_HEIGHT_MAX;
 crop->left = 0;
 crop->top = 0;

 return 0;
}
