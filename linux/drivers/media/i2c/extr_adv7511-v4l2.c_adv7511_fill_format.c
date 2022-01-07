
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int height; int width; } ;
struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct adv7511_state {TYPE_2__ dv_timings; } ;


 int V4L2_FIELD_NONE ;

__attribute__((used)) static void adv7511_fill_format(struct adv7511_state *state,
    struct v4l2_mbus_framefmt *format)
{
 format->width = state->dv_timings.bt.width;
 format->height = state->dv_timings.bt.height;
 format->field = V4L2_FIELD_NONE;
}
