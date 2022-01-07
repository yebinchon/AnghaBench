
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {unsigned int index; int std; int name; int type; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {TYPE_1__* vinput; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t type; } ;


 int EINVAL ;
 size_t TM6000_INPUT_TV ;
 int TM6000_STD ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 int * iname ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *i)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;
 unsigned int n;

 n = i->index;
 if (n >= 3)
  return -EINVAL;

 if (!dev->vinput[n].type)
  return -EINVAL;

 i->index = n;

 if (dev->vinput[n].type == TM6000_INPUT_TV)
  i->type = V4L2_INPUT_TYPE_TUNER;
 else
  i->type = V4L2_INPUT_TYPE_CAMERA;

 strscpy(i->name, iname[dev->vinput[n].type], sizeof(i->name));

 i->std = TM6000_STD;

 return 0;
}
