
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int index; int std; int type; int name; } ;
struct TYPE_2__ {int tvnorms; } ;
struct usbtv {TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;
 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_enum_input(struct file *file, void *priv,
     struct v4l2_input *i)
{
 struct usbtv *dev = video_drvdata(file);

 switch (i->index) {
 case 129:
  strscpy(i->name, "Composite", sizeof(i->name));
  break;
 case 128:
  strscpy(i->name, "S-Video", sizeof(i->name));
  break;
 default:
  return -EINVAL;
 }

 i->type = V4L2_INPUT_TYPE_CAMERA;
 i->std = dev->vdev.tvnorms;
 return 0;
}
