
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int code; int height; int width; } ;
struct TYPE_2__ {int bus_format; int window_height; int window_width; } ;
struct et8ek8_reglist {TYPE_1__ mode; } ;



__attribute__((used)) static void et8ek8_reglist_to_mbus(const struct et8ek8_reglist *reglist,
       struct v4l2_mbus_framefmt *fmt)
{
 fmt->width = reglist->mode.window_width;
 fmt->height = reglist->mode.window_height;
 fmt->code = reglist->mode.bus_format;
}
