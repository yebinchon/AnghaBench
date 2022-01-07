
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; int name; int std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_STD_ALL ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
        struct v4l2_input *inp)
{
 if (inp->index > 1)
  return -EINVAL;

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = V4L2_STD_ALL;
 sprintf(inp->name, "Camera %u", inp->index);

 return 0;
}
