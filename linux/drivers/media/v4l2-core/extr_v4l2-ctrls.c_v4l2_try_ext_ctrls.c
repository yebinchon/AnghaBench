
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_ext_controls {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct media_device {int dummy; } ;


 int try_set_ext_ctrls (int *,struct v4l2_ctrl_handler*,struct video_device*,struct media_device*,struct v4l2_ext_controls*,int) ;

int v4l2_try_ext_ctrls(struct v4l2_ctrl_handler *hdl,
         struct video_device *vdev,
         struct media_device *mdev,
         struct v4l2_ext_controls *cs)
{
 return try_set_ext_ctrls(((void*)0), hdl, vdev, mdev, cs, 0);
}
