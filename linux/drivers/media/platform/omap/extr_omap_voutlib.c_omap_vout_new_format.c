
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int left; int top; } ;
struct v4l2_window {TYPE_2__ w; } ;
struct v4l2_rect {int width; int height; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_3__ {int width; int height; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;


 int omap_vout_default_crop (struct v4l2_pix_format*,struct v4l2_framebuffer*,struct v4l2_rect*) ;

void omap_vout_new_format(struct v4l2_pix_format *pix,
  struct v4l2_framebuffer *fbuf, struct v4l2_rect *crop,
  struct v4l2_window *win)
{



 omap_vout_default_crop(pix, fbuf, crop);


 win->w.width = crop->width;
 win->w.height = crop->height;
 win->w.left = ((fbuf->fmt.width - win->w.width) >> 1) & ~1;
 win->w.top = ((fbuf->fmt.height - win->w.height) >> 1) & ~1;
}
