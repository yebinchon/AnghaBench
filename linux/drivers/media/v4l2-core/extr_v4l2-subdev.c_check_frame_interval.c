
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int check_pad (struct v4l2_subdev*,int ) ;

__attribute__((used)) static inline int check_frame_interval(struct v4l2_subdev *sd,
           struct v4l2_subdev_frame_interval *fi)
{
 if (!fi)
  return -EINVAL;

 return check_pad(sd, fi->pad);
}
