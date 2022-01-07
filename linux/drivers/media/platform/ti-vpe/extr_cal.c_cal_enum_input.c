
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int name; int type; } ;
struct file {int dummy; } ;


 scalar_t__ CAL_NUM_INPUT ;
 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int sprintf (int ,char*,scalar_t__) ;

__attribute__((used)) static int cal_enum_input(struct file *file, void *priv,
     struct v4l2_input *inp)
{
 if (inp->index >= CAL_NUM_INPUT)
  return -EINVAL;

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 sprintf(inp->name, "Camera %u", inp->index);
 return 0;
}
