
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {int * base; } ;
struct viu_dev {TYPE_2__ crop_current; int * ovfmt; TYPE_1__ ovbuf; } ;
struct TYPE_6__ {int width; int height; } ;
struct v4l2_window {int field; TYPE_3__ w; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;




__attribute__((used)) static int verify_preview(struct viu_dev *dev, struct v4l2_window *win)
{
 enum v4l2_field field;
 int maxw, maxh;

 if (dev->ovbuf.base == ((void*)0))
  return -EINVAL;
 if (dev->ovfmt == ((void*)0))
  return -EINVAL;
 if (win->w.width < 48 || win->w.height < 32)
  return -EINVAL;

 field = win->field;
 maxw = dev->crop_current.width;
 maxh = dev->crop_current.height;

 if (field == V4L2_FIELD_ANY) {
  field = (win->w.height > maxh/2)
   ? 129
   : 128;
 }
 switch (field) {
 case 128:
 case 130:
  maxh = maxh / 2;
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 win->field = field;
 if (win->w.width > maxw)
  win->w.width = maxw;
 if (win->w.height > maxh)
  win->w.height = maxh;
 return 0;
}
