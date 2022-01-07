
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *fh,
        struct v4l2_input *inp)
{
 if (inp->index != 0)
  return -EINVAL;

 strscpy(inp->name, "camera", sizeof(inp->name));
 inp->type = V4L2_INPUT_TYPE_CAMERA;

 return 0;
}
