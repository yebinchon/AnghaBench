
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viu_fh {TYPE_2__* dev; } ;
struct v4l2_input {scalar_t__ index; int name; int std; int type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vdev; } ;
struct TYPE_3__ {int tvnorms; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
     struct v4l2_input *inp)
{
 struct viu_fh *fh = priv;

 if (inp->index != 0)
  return -EINVAL;

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = fh->dev->vdev->tvnorms;
 strscpy(inp->name, "Camera", sizeof(inp->name));
 return 0;
}
