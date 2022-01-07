
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int V4L2_STD_UNKNOWN ;
 scalar_t__ query_lock (struct v4l2_subdev*) ;
 int tvp5150_read_std (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_querystd(struct v4l2_subdev *sd, v4l2_std_id *std_id)
{
 *std_id = query_lock(sd) ? tvp5150_read_std(sd) : V4L2_STD_UNKNOWN;

 return 0;
}
