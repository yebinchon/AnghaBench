
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_input {scalar_t__ index; int name; int std; int capabilities; int type; int status; } ;
struct TYPE_2__ {int tvnorms; } ;
struct rvin_dev {TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOIOCTLCMD ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_CAP_DV_TIMINGS ;
 int V4L2_IN_CAP_STD ;
 int dv_timings_cap ;
 int g_input_status ;
 int pad ;
 int strscpy (int ,char*,int) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *) ;
 scalar_t__ v4l2_subdev_has_op (struct v4l2_subdev*,int ,int ) ;
 int video ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_enum_input(struct file *file, void *priv,
      struct v4l2_input *i)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);
 int ret;

 if (i->index != 0)
  return -EINVAL;

 ret = v4l2_subdev_call(sd, video, g_input_status, &i->status);
 if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
  return ret;

 i->type = V4L2_INPUT_TYPE_CAMERA;

 if (v4l2_subdev_has_op(sd, pad, dv_timings_cap)) {
  i->capabilities = V4L2_IN_CAP_DV_TIMINGS;
  i->std = 0;
 } else {
  i->capabilities = V4L2_IN_CAP_STD;
  i->std = vin->vdev.tvnorms;
 }

 strscpy(i->name, "Camera", sizeof(i->name));

 return 0;
}
