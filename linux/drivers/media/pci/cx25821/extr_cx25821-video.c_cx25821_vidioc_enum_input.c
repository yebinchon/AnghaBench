
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int name; int std; int type; scalar_t__ index; } ;
struct file {int dummy; } ;


 int CX25821_NORMS ;
 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int cx25821_vidioc_enum_input(struct file *file, void *priv,
         struct v4l2_input *i)
{
 if (i->index)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;
 i->std = CX25821_NORMS;
 strscpy(i->name, "Composite", sizeof(i->name));
 return 0;
}
