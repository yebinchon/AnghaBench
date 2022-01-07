
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_8__ {int colorspace; int field; int height; int width; int code; } ;
struct v4l2_subdev_format {TYPE_4__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct tvp7002 {TYPE_3__* current_timings; } ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_6__ {TYPE_1__ bt; } ;
struct TYPE_7__ {int color_space; int scanmode; TYPE_2__ timings; } ;


 int MEDIA_BUS_FMT_YUYV10_1X20 ;
 struct tvp7002* to_tvp7002 (struct v4l2_subdev*) ;

__attribute__((used)) static int
tvp7002_get_pad_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct tvp7002 *tvp7002 = to_tvp7002(sd);

 fmt->format.code = MEDIA_BUS_FMT_YUYV10_1X20;
 fmt->format.width = tvp7002->current_timings->timings.bt.width;
 fmt->format.height = tvp7002->current_timings->timings.bt.height;
 fmt->format.field = tvp7002->current_timings->scanmode;
 fmt->format.colorspace = tvp7002->current_timings->color_space;

 return 0;
}
