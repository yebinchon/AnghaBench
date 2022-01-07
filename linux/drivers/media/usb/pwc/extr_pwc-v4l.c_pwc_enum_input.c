
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int type; int name; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int pwc_enum_input(struct file *file, void *fh, struct v4l2_input *i)
{
 if (i->index)
  return -EINVAL;

 strscpy(i->name, "Camera", sizeof(i->name));
 i->type = V4L2_INPUT_TYPE_CAMERA;
 return 0;
}
