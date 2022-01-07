
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; } ;
struct v4l2_window {TYPE_1__ w; int chromakey; int field; } ;
struct v4l2_rect {int height; int width; } ;
struct v4l2_framebuffer {int dummy; } ;


 scalar_t__ omap_vout_dss_omap24xx () ;
 scalar_t__ omap_vout_dss_omap34xx () ;
 int omap_vout_try_window (struct v4l2_framebuffer*,struct v4l2_window*) ;

int omap_vout_new_window(struct v4l2_rect *crop,
  struct v4l2_window *win, struct v4l2_framebuffer *fbuf,
  struct v4l2_window *new_win)
{
 int err;

 err = omap_vout_try_window(fbuf, new_win);
 if (err)
  return err;


 win->w = new_win->w;
 win->field = new_win->field;
 win->chromakey = new_win->chromakey;


 if (omap_vout_dss_omap24xx()) {

  if ((crop->height/win->w.height) >= 2)
   crop->height = win->w.height * 2;

  if ((crop->width/win->w.width) >= 2)
   crop->width = win->w.width * 2;

  if (crop->width > 768) {




   if (crop->height != win->w.height)
    crop->width = 768;
  }
 } else if (omap_vout_dss_omap34xx()) {

  if ((crop->height/win->w.height) >= 4)
   crop->height = win->w.height * 4;

  if ((crop->width/win->w.width) >= 4)
   crop->width = win->w.width * 4;
 }
 return 0;
}
