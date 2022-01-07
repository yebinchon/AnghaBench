
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int width; int height; scalar_t__ code; } ;
struct et8ek8_reglist {scalar_t__ type; } ;
struct et8ek8_meta_reglist {int dummy; } ;


 scalar_t__ ET8EK8_REGLIST_MODE ;
 struct et8ek8_reglist** et8ek8_reglist_first (struct et8ek8_meta_reglist*) ;
 int et8ek8_reglist_to_mbus (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ;
 unsigned int min (int,int) ;

__attribute__((used)) static struct et8ek8_reglist *et8ek8_reglist_find_mode_fmt(
  struct et8ek8_meta_reglist *meta,
  struct v4l2_mbus_framefmt *fmt)
{
 struct et8ek8_reglist **list = et8ek8_reglist_first(meta);
 struct et8ek8_reglist *best_match = ((void*)0);
 struct et8ek8_reglist *best_other = ((void*)0);
 struct v4l2_mbus_framefmt format;
 unsigned int max_dist_match = (unsigned int)-1;
 unsigned int max_dist_other = (unsigned int)-1;
 for (; *list; list++) {
  unsigned int dist;

  if ((*list)->type != ET8EK8_REGLIST_MODE)
   continue;

  et8ek8_reglist_to_mbus(*list, &format);

  dist = min(fmt->width, format.width)
       * min(fmt->height, format.height);
  dist = format.width * format.height
       + fmt->width * fmt->height - 2 * dist;


  if (fmt->code == format.code) {
   if (dist < max_dist_match || !best_match) {
    best_match = *list;
    max_dist_match = dist;
   }
  } else {
   if (dist < max_dist_other || !best_other) {
    best_other = *list;
    max_dist_other = dist;
   }
  }
 }

 return best_match ? best_match : best_other;
}
