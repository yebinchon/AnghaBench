
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {int name; int std; int type; scalar_t__ index; } ;
struct file {int dummy; } ;


 int CX25821_NORMS ;
 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int cx25821_vidioc_enum_output(struct file *file, void *priv,
         struct v4l2_output *o)
{
 if (o->index)
  return -EINVAL;

 o->type = V4L2_INPUT_TYPE_CAMERA;
 o->std = CX25821_NORMS;
 strscpy(o->name, "Composite", sizeof(o->name));
 return 0;
}
