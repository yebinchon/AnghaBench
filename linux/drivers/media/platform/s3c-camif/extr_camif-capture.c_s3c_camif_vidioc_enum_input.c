
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_input {int name; int type; scalar_t__ index; } ;
struct file {int dummy; } ;
struct camif_vp {TYPE_2__* camif; } ;
struct TYPE_3__ {struct v4l2_subdev* sd; } ;
struct TYPE_4__ {TYPE_1__ sensor; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,int ,int) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_vidioc_enum_input(struct file *file, void *priv,
           struct v4l2_input *input)
{
 struct camif_vp *vp = video_drvdata(file);
 struct v4l2_subdev *sensor = vp->camif->sensor.sd;

 if (input->index || sensor == ((void*)0))
  return -EINVAL;

 input->type = V4L2_INPUT_TYPE_CAMERA;
 strscpy(input->name, sensor->name, sizeof(input->name));
 return 0;
}
