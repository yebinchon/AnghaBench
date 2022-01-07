
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int colorspace; int height; int width; } ;
struct v4l2_bt_timings {scalar_t__ interlaced; int height; int width; } ;
struct TYPE_3__ {int colorspace; } ;
struct TYPE_4__ {struct v4l2_bt_timings bt; } ;
struct tda1997x_state {TYPE_1__ colorimetry; TYPE_2__ timings; } ;


 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;

__attribute__((used)) static void tda1997x_fill_format(struct tda1997x_state *state,
     struct v4l2_mbus_framefmt *format)
{
 const struct v4l2_bt_timings *bt;

 memset(format, 0, sizeof(*format));
 bt = &state->timings.bt;
 format->width = bt->width;
 format->height = bt->height;
 format->colorspace = state->colorimetry.colorspace;
 format->field = (bt->interlaced) ?
  V4L2_FIELD_SEQ_TB : V4L2_FIELD_NONE;
}
