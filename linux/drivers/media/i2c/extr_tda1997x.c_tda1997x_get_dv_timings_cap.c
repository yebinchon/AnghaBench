
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {int dummy; } ;


 struct v4l2_dv_timings_cap tda1997x_dv_timings_cap ;

__attribute__((used)) static int tda1997x_get_dv_timings_cap(struct v4l2_subdev *sd,
           struct v4l2_dv_timings_cap *cap)
{
 *cap = tda1997x_dv_timings_cap;
 return 0;
}
