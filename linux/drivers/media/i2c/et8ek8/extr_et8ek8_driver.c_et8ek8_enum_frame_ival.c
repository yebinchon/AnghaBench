
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_interval_enum {int index; scalar_t__ code; scalar_t__ width; scalar_t__ height; int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ width; scalar_t__ height; } ;
struct et8ek8_mode {int timeperframe; } ;
struct et8ek8_reglist {scalar_t__ type; struct et8ek8_mode mode; } ;


 int EINVAL ;
 scalar_t__ ET8EK8_REGLIST_MODE ;
 struct et8ek8_reglist** et8ek8_reglist_first (int *) ;
 int et8ek8_reglist_to_mbus (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ;
 int meta_reglist ;

__attribute__((used)) static int et8ek8_enum_frame_ival(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_interval_enum *fie)
{
 struct et8ek8_reglist **list =
   et8ek8_reglist_first(&meta_reglist);
 struct v4l2_mbus_framefmt format;
 int index = fie->index;

 for (; *list; list++) {
  struct et8ek8_mode *mode = &(*list)->mode;

  if ((*list)->type != ET8EK8_REGLIST_MODE)
   continue;

  et8ek8_reglist_to_mbus(*list, &format);
  if (fie->code != format.code)
   continue;

  if (fie->width != format.width || fie->height != format.height)
   continue;

  if (index-- == 0) {
   fie->interval = mode->timeperframe;
   return 0;
  }
 }

 return -EINVAL;
}
