
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_output {int std; int type; int name; scalar_t__ index; } ;
struct TYPE_2__ {int tvnorms; } ;
struct sh_vou_device {TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOG ;
 int strscpy (int ,char*,int) ;
 struct sh_vou_device* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_vou_enum_output(struct file *file, void *fh,
         struct v4l2_output *a)
{
 struct sh_vou_device *vou_dev = video_drvdata(file);

 if (a->index)
  return -EINVAL;
 strscpy(a->name, "Video Out", sizeof(a->name));
 a->type = V4L2_OUTPUT_TYPE_ANALOG;
 a->std = vou_dev->vdev.tvnorms;
 return 0;
}
