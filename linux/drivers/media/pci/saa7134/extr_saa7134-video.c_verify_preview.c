
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct v4l2_window {int clipcount; int field; TYPE_3__ w; scalar_t__ global_alpha; scalar_t__ chromakey; } ;
struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {int * base; } ;
struct saa7134_dev {TYPE_2__ crop_current; int * ovfmt; TYPE_1__ ovbuf; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;

 int V4L2_FIELD_INTERLACED ;


__attribute__((used)) static int verify_preview(struct saa7134_dev *dev, struct v4l2_window *win, bool try)
{
 enum v4l2_field field;
 int maxw, maxh;

 if (!try && (dev->ovbuf.base == ((void*)0) || dev->ovfmt == ((void*)0)))
  return -EINVAL;
 if (win->w.width < 48)
  win->w.width = 48;
 if (win->w.height < 32)
  win->w.height = 32;
 if (win->clipcount > 8)
  win->clipcount = 8;

 win->chromakey = 0;
 win->global_alpha = 0;
 field = win->field;
 maxw = dev->crop_current.width;
 maxh = dev->crop_current.height;

 if (V4L2_FIELD_ANY == field) {
  field = (win->w.height > maxh/2)
   ? V4L2_FIELD_INTERLACED
   : 128;
 }
 switch (field) {
 case 128:
 case 129:
  maxh = maxh / 2;
  break;
 default:
  field = V4L2_FIELD_INTERLACED;
  break;
 }

 win->field = field;
 if (win->w.width > maxw)
  win->w.width = maxw;
 if (win->w.height > maxh)
  win->w.height = maxh;
 return 0;
}
