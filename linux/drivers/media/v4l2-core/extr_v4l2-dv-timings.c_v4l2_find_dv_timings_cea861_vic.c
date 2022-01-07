
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_bt_timings {unsigned int width; int flags; scalar_t__ cea861_vic; } ;
struct v4l2_dv_timings {struct v4l2_bt_timings bt; } ;


 int V4L2_DV_FL_HAS_CEA861_VIC ;
 struct v4l2_dv_timings* v4l2_dv_timings_presets ;

bool v4l2_find_dv_timings_cea861_vic(struct v4l2_dv_timings *t, u8 vic)
{
 unsigned int i;

 for (i = 0; i < v4l2_dv_timings_presets[i].bt.width; i++) {
  const struct v4l2_bt_timings *bt =
   &v4l2_dv_timings_presets[i].bt;

  if ((bt->flags & V4L2_DV_FL_HAS_CEA861_VIC) &&
      bt->cea861_vic == vic) {
   *t = v4l2_dv_timings_presets[i];
   return 1;
  }
 }
 return 0;
}
