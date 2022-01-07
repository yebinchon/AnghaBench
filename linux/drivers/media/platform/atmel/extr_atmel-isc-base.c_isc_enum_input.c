
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int name; scalar_t__ std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int isc_enum_input(struct file *file, void *priv,
      struct v4l2_input *inp)
{
 if (inp->index != 0)
  return -EINVAL;

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = 0;
 strscpy(inp->name, "Camera", sizeof(inp->name));

 return 0;
}
