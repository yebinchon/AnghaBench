
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_2__ {struct v4l2_dv_timings timings; } ;


 int tvp7002_query_dv (struct v4l2_subdev*,int*) ;
 TYPE_1__* tvp7002_timings ;

__attribute__((used)) static int tvp7002_query_dv_timings(struct v4l2_subdev *sd,
     struct v4l2_dv_timings *timings)
{
 int index;
 int err = tvp7002_query_dv(sd, &index);

 if (err)
  return err;
 *timings = tvp7002_timings[index].timings;
 return 0;
}
