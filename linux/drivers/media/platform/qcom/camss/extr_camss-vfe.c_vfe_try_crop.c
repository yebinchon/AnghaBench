
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_line {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {scalar_t__ width; scalar_t__ left; scalar_t__ height; scalar_t__ top; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 struct v4l2_rect* __vfe_get_compose (struct vfe_line*,struct v4l2_subdev_pad_config*,int) ;

__attribute__((used)) static void vfe_try_crop(struct vfe_line *line,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_rect *rect,
    enum v4l2_subdev_format_whence which)
{
 struct v4l2_rect *compose;

 compose = __vfe_get_compose(line, cfg, which);

 if (rect->width > compose->width)
  rect->width = compose->width;

 if (rect->width + rect->left > compose->width)
  rect->left = compose->width - rect->width;

 if (rect->height > compose->height)
  rect->height = compose->height;

 if (rect->height + rect->top > compose->height)
  rect->top = compose->height - rect->height;


 rect->left += (rect->width & 0xf) >> 1;
 rect->width &= ~0xf;

 if (rect->width < 16) {
  rect->left = 0;
  rect->width = 16;
 }

 if (rect->height < 4) {
  rect->top = 0;
  rect->height = 4;
 }
}
