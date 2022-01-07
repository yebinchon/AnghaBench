
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int dummy; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {TYPE_1__* devtype; } ;
struct TYPE_2__ {int (* set_framerate ) (struct v4l2_subdev*,struct v4l2_fract*) ;} ;


 int stub1 (struct v4l2_subdev*,struct v4l2_fract*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct v4l2_fract *tpf = &ival->interval;
 struct ov7670_info *info = to_state(sd);


 return info->devtype->set_framerate(sd, tpf);
}
