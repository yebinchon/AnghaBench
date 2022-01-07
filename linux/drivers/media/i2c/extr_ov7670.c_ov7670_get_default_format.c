
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct ov7670_info {TYPE_1__* fmt; TYPE_2__* devtype; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {TYPE_3__* win_sizes; } ;
struct TYPE_4__ {int mbus_code; int colorspace; } ;


 int V4L2_FIELD_NONE ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void ov7670_get_default_format(struct v4l2_subdev *sd,
          struct v4l2_mbus_framefmt *format)
{
 struct ov7670_info *info = to_state(sd);

 format->width = info->devtype->win_sizes[0].width;
 format->height = info->devtype->win_sizes[0].height;
 format->colorspace = info->fmt->colorspace;
 format->code = info->fmt->mbus_code;
 format->field = V4L2_FIELD_NONE;
}
