
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int height; int colorspace; int field; int width; } ;
struct TYPE_3__ {int height; int flags; int width; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct adv76xx_state {TYPE_2__ timings; } ;


 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_DV_FL_IS_CE_VIDEO ;
 int V4L2_FIELD_NONE ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

__attribute__((used)) static void adv76xx_fill_format(struct adv76xx_state *state,
    struct v4l2_mbus_framefmt *format)
{
 memset(format, 0, sizeof(*format));

 format->width = state->timings.bt.width;
 format->height = state->timings.bt.height;
 format->field = V4L2_FIELD_NONE;
 format->colorspace = V4L2_COLORSPACE_SRGB;

 if (state->timings.bt.flags & V4L2_DV_FL_IS_CE_VIDEO)
  format->colorspace = (state->timings.bt.height <= 576) ?
   V4L2_COLORSPACE_SMPTE170M : V4L2_COLORSPACE_REC709;
}
