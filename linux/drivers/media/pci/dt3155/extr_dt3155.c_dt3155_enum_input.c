
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; scalar_t__ status; int std; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_STD_ALL ;
 int snprintf (int ,int,char*,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int dt3155_enum_input(struct file *filp, void *p,
        struct v4l2_input *input)
{
 if (input->index > 3)
  return -EINVAL;
 if (input->index)
  snprintf(input->name, sizeof(input->name), "VID%d",
    input->index);
 else
  strscpy(input->name, "J2/VID0", sizeof(input->name));
 input->type = V4L2_INPUT_TYPE_CAMERA;
 input->std = V4L2_STD_ALL;
 input->status = 0;
 return 0;
}
