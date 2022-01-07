
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {scalar_t__ field; int height; int width; int colorspace; int code; } ;
struct TYPE_4__ {int height; int width; scalar_t__ interlaced; } ;
struct TYPE_3__ {TYPE_2__ bt; } ;
struct adv748x_hdmi {TYPE_1__ timings; } ;


 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int V4L2_COLORSPACE_SRGB ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ V4L2_FIELD_NONE ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

__attribute__((used)) static void adv748x_hdmi_fill_format(struct adv748x_hdmi *hdmi,
         struct v4l2_mbus_framefmt *fmt)
{
 memset(fmt, 0, sizeof(*fmt));

 fmt->code = MEDIA_BUS_FMT_RGB888_1X24;
 fmt->field = hdmi->timings.bt.interlaced ?
   V4L2_FIELD_ALTERNATE : V4L2_FIELD_NONE;


 fmt->colorspace = V4L2_COLORSPACE_SRGB;

 fmt->width = hdmi->timings.bt.width;
 fmt->height = hdmi->timings.bt.height;

 if (fmt->field == V4L2_FIELD_ALTERNATE)
  fmt->height /= 2;
}
