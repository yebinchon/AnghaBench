
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct TYPE_2__ {scalar_t__ xres; scalar_t__ yres; scalar_t__ interlaced; } ;
struct vpbe_device {TYPE_1__ current_timings; } ;
struct v4l2_rect {scalar_t__ width; scalar_t__ left; scalar_t__ height; scalar_t__ top; } ;



__attribute__((used)) static void vpbe_disp_check_window_params(struct vpbe_display *disp_dev,
   struct v4l2_rect *c)
{
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;

 if ((c->width == 0) ||
   ((c->width + c->left) > vpbe_dev->current_timings.xres))
  c->width = vpbe_dev->current_timings.xres - c->left;

 if ((c->height == 0) || ((c->height + c->top) >
   vpbe_dev->current_timings.yres))
  c->height = vpbe_dev->current_timings.yres - c->top;


 if (vpbe_dev->current_timings.interlaced)
  c->height &= (~0x01);

}
