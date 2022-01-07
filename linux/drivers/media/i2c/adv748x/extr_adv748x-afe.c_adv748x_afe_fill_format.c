
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int width; int height; int field; int colorspace; int code; } ;
struct adv748x_afe {int curr_norm; } ;


 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_STD_525_60 ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

__attribute__((used)) static void adv748x_afe_fill_format(struct adv748x_afe *afe,
        struct v4l2_mbus_framefmt *fmt)
{
 memset(fmt, 0, sizeof(*fmt));

 fmt->code = MEDIA_BUS_FMT_UYVY8_2X8;
 fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
 fmt->field = V4L2_FIELD_ALTERNATE;

 fmt->width = 720;
 fmt->height = afe->curr_norm & V4L2_STD_525_60 ? 480 : 576;


 fmt->height /= 2;
}
