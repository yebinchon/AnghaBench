
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_3__ {scalar_t__ width; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct adv7842_video_standards {int v_freq; scalar_t__ vid_std; TYPE_2__ timings; } ;


 int io_write (struct v4l2_subdev*,int,scalar_t__) ;
 scalar_t__ is_digital_input (struct v4l2_subdev*) ;
 int v4l2_match_dv_timings (struct v4l2_dv_timings const*,TYPE_2__*,int,int) ;

__attribute__((used)) static int find_and_set_predefined_video_timings(struct v4l2_subdev *sd,
  u8 prim_mode,
  const struct adv7842_video_standards *predef_vid_timings,
  const struct v4l2_dv_timings *timings)
{
 int i;

 for (i = 0; predef_vid_timings[i].timings.bt.width; i++) {
  if (!v4l2_match_dv_timings(timings, &predef_vid_timings[i].timings,
      is_digital_input(sd) ? 250000 : 1000000, 0))
   continue;

  io_write(sd, 0x00, predef_vid_timings[i].vid_std);

  io_write(sd, 0x01, (predef_vid_timings[i].v_freq << 4) + prim_mode);
  return 0;
 }

 return -1;
}
