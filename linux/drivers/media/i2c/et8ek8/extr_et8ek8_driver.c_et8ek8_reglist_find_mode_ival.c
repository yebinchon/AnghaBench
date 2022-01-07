
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int dummy; } ;
struct et8ek8_mode {scalar_t__ window_width; scalar_t__ window_height; struct v4l2_fract timeperframe; } ;
struct et8ek8_reglist {scalar_t__ type; struct et8ek8_mode mode; } ;
struct et8ek8_meta_reglist {int dummy; } ;


 scalar_t__ ET8EK8_REGLIST_MODE ;
 int TIMEPERFRAME_AVG_FPS (struct v4l2_fract) ;
 struct et8ek8_reglist** et8ek8_reglist_first (struct et8ek8_meta_reglist*) ;

__attribute__((used)) static struct et8ek8_reglist *et8ek8_reglist_find_mode_ival(
  struct et8ek8_meta_reglist *meta,
  struct et8ek8_reglist *current_reglist,
  struct v4l2_fract *timeperframe)
{
 int fps = TIMEPERFRAME_AVG_FPS(*timeperframe);
 struct et8ek8_reglist **list = et8ek8_reglist_first(meta);
 struct et8ek8_mode *current_mode = &current_reglist->mode;

 for (; *list; list++) {
  struct et8ek8_mode *mode = &(*list)->mode;

  if ((*list)->type != ET8EK8_REGLIST_MODE)
   continue;

  if (mode->window_width != current_mode->window_width ||
      mode->window_height != current_mode->window_height)
   continue;

  if (TIMEPERFRAME_AVG_FPS(mode->timeperframe) == fps)
   return *list;
 }

 return ((void*)0);
}
