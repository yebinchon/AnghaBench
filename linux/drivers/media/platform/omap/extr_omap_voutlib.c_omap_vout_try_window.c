
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {scalar_t__ left; scalar_t__ width; scalar_t__ top; int height; } ;
struct v4l2_window {int * bitmap; scalar_t__ clipcount; int * clips; int field; struct v4l2_rect w; } ;
struct TYPE_2__ {scalar_t__ width; int height; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;

int omap_vout_try_window(struct v4l2_framebuffer *fbuf,
   struct v4l2_window *new_win)
{
 struct v4l2_rect try_win;


 try_win = new_win->w;




 if (try_win.left < 0) {
  try_win.width += try_win.left;
  try_win.left = 0;
 }
 if (try_win.top < 0) {
  try_win.height += try_win.top;
  try_win.top = 0;
 }
 try_win.width = (try_win.width < fbuf->fmt.width) ?
  try_win.width : fbuf->fmt.width;
 try_win.height = (try_win.height < fbuf->fmt.height) ?
  try_win.height : fbuf->fmt.height;
 if (try_win.left + try_win.width > fbuf->fmt.width)
  try_win.width = fbuf->fmt.width - try_win.left;
 if (try_win.top + try_win.height > fbuf->fmt.height)
  try_win.height = fbuf->fmt.height - try_win.top;
 try_win.width &= ~1;
 try_win.height &= ~1;

 if (try_win.width <= 0 || try_win.height <= 0)
  return -EINVAL;


 new_win->w = try_win;
 new_win->field = V4L2_FIELD_NONE;
 new_win->clips = ((void*)0);
 new_win->clipcount = 0;
 new_win->bitmap = ((void*)0);

 return 0;
}
